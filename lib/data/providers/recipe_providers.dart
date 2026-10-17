import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:racikara/data/models/province.dart';
import 'package:racikara/data/models/recipe.dart';

/// Memuat semua resep dari assets/data/recipes.json.
final recipesProvider = FutureProvider<List<Recipe>>((ref) async {
  final raw = await rootBundle.loadString('assets/data/recipes.json');
  final list = jsonDecode(raw) as List<dynamic>;
  return list
      .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
      .toList();
});

/// Daftar provinsi dengan jumlah resep yang sudah dihitung.
final provincesProvider = Provider<List<Province>>((ref) {
  final recipes = ref.watch(recipesProvider).maybeWhen(
        data: (d) => d,
        orElse: () => <Recipe>[],
      );

  final counts = <String, int>{};
  for (final r in recipes) {
    counts[r.provinceId] = (counts[r.provinceId] ?? 0) + 1;
  }

  return kProvinces
      .map((p) => p.copyWith(recipeCount: counts[p.id] ?? 0))
      .toList();
});

/// Resep untuk satu provinsi.
final recipesByProvinceProvider =
    Provider.family<List<Recipe>, String>((ref, provinceId) {
  final recipes = ref.watch(recipesProvider).maybeWhen(
        data: (d) => d,
        orElse: () => <Recipe>[],
      );
  return recipes.where((r) => r.provinceId == provinceId).toList();
});