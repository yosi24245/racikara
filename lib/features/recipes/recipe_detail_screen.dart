import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:racikara/data/models/recipe.dart';
import 'package:racikara/data/providers/recipe_providers.dart';

/// Layar detail resep: gambar, info singkat, kalkulator porsi, bahan, langkah.
class RecipeDetailScreen extends ConsumerWidget {
  const RecipeDetailScreen({super.key, required this.recipeId});

  final String recipeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipesAsync = ref.watch(recipesProvider);

    return recipesAsync.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: const Center(child: Text('Gagal memuat resep.')),
      ),
      data: (recipes) {
        final matches = recipes.where((r) => r.id == recipeId);
        if (matches.isEmpty) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(child: Text('Resep tidak ditemukan.')),
          );
        }
        return _RecipeDetailView(recipe: matches.first);
      },
    );
  }
}

class _RecipeDetailView extends StatefulWidget {
  const _RecipeDetailView({required this.recipe});

  final Recipe recipe;

  @override
  State<_RecipeDetailView> createState() => _RecipeDetailViewState();
}

class _RecipeDetailViewState extends State<_RecipeDetailView> {
  late int _servings = widget.recipe.servings;

  double get _multiplier => _servings / widget.recipe.servings;

  @override
  Widget build(BuildContext context) {
    final recipe = widget.recipe;
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 260,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                recipe.name,
                style: const TextStyle(
                  shadows: [Shadow(blurRadius: 6, color: Colors.black54)],
                ),
              ),
              background: Hero(
                tag: 'recipe-image-${recipe.id}',
                child: recipe.imageUrl.isEmpty
                    ? ColoredBox(color: scheme.surfaceContainerHighest)
                    : CachedNetworkImage(
                        imageUrl: recipe.imageUrl,
                        fit: BoxFit.cover,
                        errorWidget: (_, __, ___) =>
                            ColoredBox(color: scheme.surfaceContainerHighest),
                      ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // Info singkat
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(
                      avatar: const Icon(Icons.schedule, size: 18),
                      label: Text(recipe.cookTimeLabel),
                    ),
                    Chip(
                      avatar: const Icon(Icons.signal_cellular_alt, size: 18),
                      label: Text(recipe.difficulty.label),
                    ),
                    Chip(
                      avatar: const Icon(Icons.category_outlined, size: 18),
                      label: Text(recipe.category.label),
                    ),
                    if (recipe.originPlace != null)
                      Chip(
                        avatar: const Icon(Icons.place_outlined, size: 18),
                        label: Text(recipe.originPlace!),
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(recipe.description, style: textTheme.bodyLarge),
                const SizedBox(height: 24),

                // Bahan + kalkulator porsi
                Row(
                  children: [
                    Expanded(
                      child: Text('Bahan', style: textTheme.titleLarge),
                    ),
                    IconButton.outlined(
                      tooltip: 'Kurangi porsi',
                      onPressed:
                          _servings > 1 ? () => setState(() => _servings--) : null,
                      icon: const Icon(Icons.remove),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        '$_servings porsi',
                        style: textTheme.titleMedium,
                      ),
                    ),
                    IconButton.outlined(
                      tooltip: 'Tambah porsi',
                      onPressed: () => setState(() => _servings++),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                for (final ingredient in recipe.ingredients)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 4, right: 8),
                          child: Icon(Icons.circle, size: 8),
                        ),
                        Expanded(
                          child: Text(
                            ingredient.display(servingMultiplier: _multiplier),
                            style: textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 24),

                // Langkah
                Text('Langkah memasak', style: textTheme.titleLarge),
                const SizedBox(height: 8),
                for (var i = 0; i < recipe.steps.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: scheme.primaryContainer,
                          child: Text(
                            '${i + 1}',
                            style: TextStyle(
                              fontSize: 13,
                              color: scheme.onPrimaryContainer,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(recipe.steps[i], style: textTheme.bodyLarge),
                        ),
                      ],
                    ),
                  ),

                // Kredit
                if (recipe.source != null || recipe.imageCredit != null) ...[
                  const Divider(height: 32),
                  if (recipe.source != null)
                    Text('Sumber resep: ${recipe.source}',
                        style: textTheme.bodySmall),
                  if (recipe.imageCredit != null)
                    Text('Foto: ${recipe.imageCredit}',
                        style: textTheme.bodySmall),
                ],
                const SizedBox(height: 32),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}