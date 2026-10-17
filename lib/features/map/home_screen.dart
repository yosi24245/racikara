import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

import 'package:racikara/data/models/province.dart';
import 'package:racikara/data/models/recipe.dart';
import 'package:racikara/data/providers/recipe_providers.dart';

/// Layar utama: peta Indonesia dengan marker provinsi.
/// Tap marker -> bottom sheet daftar resep provinsi -> tap resep -> detail.
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  static const LatLng _indonesiaCenter = LatLng(-2.5, 118);
  static const double _indonesiaZoom = 4.5;

  /// Posisi kamera untuk tiap kelompok pulau.
  static const Map<IslandGroup, (LatLng, double)> _islandViews = {
    IslandGroup.sumatera: (LatLng(-0.5, 101.5), 5.2),
    IslandGroup.jawa: (LatLng(-7.4, 110.5), 6.2),
    IslandGroup.baliNusaTenggara: (LatLng(-8.7, 118.0), 6.0),
    IslandGroup.kalimantan: (LatLng(0.2, 114.0), 5.5),
    IslandGroup.sulawesi: (LatLng(-2.0, 121.5), 5.6),
    IslandGroup.malukuPapua: (LatLng(-3.5, 134.0), 5.0),
  };

  final MapController _mapController = MapController();
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();

  IslandGroup? _selectedIsland;
  String? _selectedProvinceId;
  String _query = '';

  @override
  void dispose() {
    _mapController.dispose();
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------- actions

  Future<void> _selectProvince(Province province) async {
    _searchFocus.unfocus();
    _searchController.clear();
    setState(() {
      _query = '';
      _selectedProvinceId = province.id;
    });

    _mapController.move(LatLng(province.latitude, province.longitude), 7);

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useSafeArea: true,
      builder: (_) => _ProvinceRecipeSheet(province: province),
    );

    if (mounted) setState(() => _selectedProvinceId = null);
  }

  void _selectIsland(IslandGroup? island) {
    setState(() => _selectedIsland = island);
    if (island == null) {
      _mapController.move(_indonesiaCenter, _indonesiaZoom);
    } else {
      final view = _islandViews[island]!;
      _mapController.move(view.$1, view.$2);
    }
  }

  void _resetView() {
    _selectIsland(null);
  }

  // ------------------------------------------------------------------ build

  @override
  Widget build(BuildContext context) {
    final provinces = ref.watch(provincesProvider);
    final recipesAsync = ref.watch(recipesProvider);

    final visibleProvinces = provinces
        .where((p) => _selectedIsland == null || p.island == _selectedIsland)
        .toList();

    final searchResults = _query.trim().isEmpty
        ? <Province>[]
        : provinces
            .where((p) =>
                p.name.toLowerCase().contains(_query.trim().toLowerCase()) ||
                (p.capital?.toLowerCase().contains(_query.trim().toLowerCase()) ??
                    false))
            .take(5)
            .toList();

    return Scaffold(
      body: Stack(
        children: [
          // ---------------------------------------------------------- peta
          FlutterMap(
            mapController: _mapController,
            options: const MapOptions(
              initialCenter: _indonesiaCenter,
              initialZoom: _indonesiaZoom,
              minZoom: 3.5,
              maxZoom: 12,
              interactionOptions: InteractionOptions(
                flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
              ),
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.contoh.resepnusantara',
              ),
              MarkerLayer(
                markers: [
                  for (final p in visibleProvinces)
                    Marker(
                      point: LatLng(p.latitude, p.longitude),
                      width: 56,
                      height: 56,
                      alignment: Alignment.topCenter,
                      child: _ProvinceMarker(
                        province: p,
                        selected: p.id == _selectedProvinceId,
                        onTap: () => _selectProvince(p),
                      ),
                    ),
                ],
              ),
              const SimpleAttributionWidget(
                source: Text('© OpenStreetMap contributors'),
              ),
            ],
          ),

          // ------------------------------------------- search + filter pulau
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _SearchBar(
                    controller: _searchController,
                    focusNode: _searchFocus,
                    onChanged: (v) => setState(() => _query = v),
                    onClear: () {
                      _searchController.clear();
                      setState(() => _query = '');
                    },
                  ),
                  if (_query.trim().isNotEmpty)
                    _SearchResults(
                      results: searchResults,
                      onTap: _selectProvince,
                    )
                  else ...[
                    const SizedBox(height: 8),
                    _IslandChips(
                      selected: _selectedIsland,
                      onSelected: _selectIsland,
                    ),
                  ],
                  if (recipesAsync.isLoading)
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: LinearProgressIndicator(),
                    ),
                  if (recipesAsync.hasError)
                    _ErrorBanner(
                      message: 'Gagal memuat resep.',
                      onRetry: () => ref.invalidate(recipesProvider),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        tooltip: 'Tampilkan seluruh Indonesia',
        onPressed: _resetView,
        child: const Icon(Icons.my_location),
      ),
    );
  }
}

// ======================================================================
// Widget pendukung
// ======================================================================

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    required this.controller,
    required this.focusNode,
    required this.onChanged,
    required this.onClear,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(28),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        onChanged: onChanged,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Cari provinsi, mis. Sumatera Utara',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: controller.text.isEmpty
              ? null
              : IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: onClear,
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}

class _SearchResults extends StatelessWidget {
  const _SearchResults({required this.results, required this.onTap});

  final List<Province> results;
  final ValueChanged<Province> onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: results.isEmpty
            ? const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Provinsi tidak ditemukan'),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final p in results)
                    ListTile(
                      leading: const Icon(Icons.location_on_outlined),
                      title: Text(p.name),
                      subtitle: Text('${p.recipeCount} resep'),
                      onTap: () => onTap(p),
                    ),
                ],
              ),
      ),
    );
  }
}

class _IslandChips extends StatelessWidget {
  const _IslandChips({required this.selected, required this.onSelected});

  final IslandGroup? selected;
  final ValueChanged<IslandGroup?> onSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: const Text('Semua'),
              selected: selected == null,
              onSelected: (_) => onSelected(null),
            ),
          ),
          for (final island in IslandGroup.values)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ChoiceChip(
                label: Text(island.label),
                selected: selected == island,
                onSelected: (_) => onSelected(island),
              ),
            ),
        ],
      ),
    );
  }
}

class _ErrorBanner extends StatelessWidget {
  const _ErrorBanner({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Material(
        color: scheme.errorContainer,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Row(
            children: [
              Icon(Icons.error_outline, color: scheme.onErrorContainer),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(color: scheme.onErrorContainer),
                ),
              ),
              TextButton(onPressed: onRetry, child: const Text('Coba lagi')),
            ],
          ),
        ),
      ),
    );
  }
}

/// Marker provinsi: pin dengan badge jumlah resep.
class _ProvinceMarker extends StatelessWidget {
  const _ProvinceMarker({
    required this.province,
    required this.selected,
    required this.onTap,
  });

  final Province province;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final hasRecipes = province.recipeCount > 0;
    final pinColor = selected
        ? scheme.tertiary
        : hasRecipes
            ? scheme.primary
            : scheme.outline;

    return Tooltip(
      message: province.name,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Icon(
              Icons.location_on,
              size: selected ? 52 : 44,
              color: pinColor,
              shadows: const [Shadow(blurRadius: 4, color: Colors.black38)],
            ),
            if (hasRecipes)
              Positioned(
                top: 6,
                child: Container(
                  constraints:
                      const BoxConstraints(minWidth: 18, minHeight: 18),
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${province.recipeCount}',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: pinColor,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ======================================================================
// Bottom sheet daftar resep per provinsi
// ======================================================================

class _ProvinceRecipeSheet extends ConsumerWidget {
  const _ProvinceRecipeSheet({required this.province});

  final Province province;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipes = ref.watch(recipesByProvinceProvider(province.id));
    final textTheme = Theme.of(context).textTheme;

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.55,
      minChildSize: 0.3,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          children: [
            Text(province.name, style: textTheme.headlineSmall),
            const SizedBox(height: 4),
            Text(
              [
                if (province.capital != null) 'Ibu kota: ${province.capital}',
                '${recipes.length} resep',
              ].join(' · '),
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            if (recipes.isEmpty)
              const _EmptyRecipes()
            else
              for (final r in recipes)
                _RecipeCard(
                  recipe: r,
                  onTap: () {
                    Navigator.of(context).pop();
                    context.push('/recipe/${r.id}');
                  },
                ),
          ],
        );
      },
    );
  }
}

class _EmptyRecipes extends StatelessWidget {
  const _EmptyRecipes();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Icon(
            Icons.restaurant_menu,
            size: 56,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 12),
          const Text('Belum ada resep di daerah ini'),
        ],
      ),
    );
  }
}

class _RecipeCard extends StatelessWidget {
  const _RecipeCard({required this.recipe, required this.onTap});

  final Recipe recipe;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Hero(
              tag: 'recipe-image-${recipe.id}',
              child: SizedBox(
                width: 96,
                height: 96,
                child: recipe.imageUrl.isEmpty
                    ? const _ImagePlaceholder()
                    : CachedNetworkImage(
                        imageUrl: recipe.imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (_, __) => const _ImagePlaceholder(),
                        errorWidget: (_, __, ___) => const _ImagePlaceholder(),
                      ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name,
                      style: textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      recipe.description,
                      style: textTheme.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 12,
                      children: [
                        _InfoItem(
                          icon: Icons.schedule,
                          text: recipe.cookTimeLabel,
                        ),
                        _InfoItem(
                          icon: Icons.signal_cellular_alt,
                          text: recipe.difficulty.label,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14),
        const SizedBox(width: 4),
        Text(text, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Icon(
        Icons.restaurant,
        color: Theme.of(context).colorScheme.outline,
      ),
    );
  }
}