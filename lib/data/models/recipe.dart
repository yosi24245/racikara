import 'package:flutter/foundation.dart';

/// Kategori resep.
enum RecipeCategory {
  utama,
  jajanan,
  minuman,
  sambal,
  kue;

  /// Label untuk ditampilkan di UI.
  String get label {
    switch (this) {
      case RecipeCategory.utama:
        return 'Makanan Utama';
      case RecipeCategory.jajanan:
        return 'Jajanan';
      case RecipeCategory.minuman:
        return 'Minuman';
      case RecipeCategory.sambal:
        return 'Sambal & Pelengkap';
      case RecipeCategory.kue:
        return 'Kue & Dessert';
    }
  }

  /// Konversi dari string JSON. Default ke [utama] jika tidak dikenali.
  static RecipeCategory fromString(String? value) {
    return RecipeCategory.values.firstWhere(
      (c) => c.name == value,
      orElse: () => RecipeCategory.utama,
    );
  }
}

/// Tingkat kesulitan memasak.
enum Difficulty {
  mudah,
  sedang,
  sulit;

  String get label {
    switch (this) {
      case Difficulty.mudah:
        return 'Mudah';
      case Difficulty.sedang:
        return 'Sedang';
      case Difficulty.sulit:
        return 'Sulit';
    }
  }

  static Difficulty fromString(String? value) {
    return Difficulty.values.firstWhere(
      (d) => d.name == value,
      orElse: () => Difficulty.sedang,
    );
  }
}

/// Satu bahan dalam resep, misalnya "Ikan mas" 1 kg.
@immutable
class Ingredient {
  final String name;
  final double? quantity;
  final String? unit;
  final String? note;

  const Ingredient({
    required this.name,
    this.quantity,
    this.unit,
    this.note,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      name: json['name'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
      note: json['note'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        if (quantity != null) 'quantity': quantity,
        if (unit != null) 'unit': unit,
        if (note != null) 'note': note,
      };

  /// Teks siap tampil, contoh: "1 kg Ikan mas (dibersihkan)".
  /// [servingMultiplier] dipakai untuk kalkulator porsi.
  String display({double servingMultiplier = 1}) {
    final buffer = StringBuffer();
    if (quantity != null) {
      buffer.write(_formatNumber(quantity! * servingMultiplier));
      buffer.write(' ');
    }
    if (unit != null && unit!.isNotEmpty) {
      buffer.write('$unit ');
    }
    buffer.write(name);
    if (note != null && note!.isNotEmpty) {
      buffer.write(' ($note)');
    }
    return buffer.toString();
  }

  static String _formatNumber(double value) {
    if (value == value.roundToDouble()) return value.toInt().toString();
    return value
        .toStringAsFixed(2)
        .replaceAll(RegExp(r'0+$'), '')
        .replaceAll(RegExp(r'\.$'), '');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ingredient &&
          other.name == name &&
          other.quantity == quantity &&
          other.unit == unit &&
          other.note == note;

  @override
  int get hashCode => Object.hash(name, quantity, unit, note);
}

/// Model utama resep makanan daerah.
@immutable
class Recipe {
  final String id;
  final String name;
  final String provinceId;
  final String? originPlace; // kota/kabupaten asal, opsional
  final RecipeCategory category;
  final Difficulty difficulty;
  final String imageUrl;
  final String description;
  final int cookTimeMinutes;
  final int servings;
  final List<Ingredient> ingredients;
  final List<String> steps;
  final List<String> tags;
  final String? videoUrl;
  final String? source;
  final String? imageCredit;

  const Recipe({
    required this.id,
    required this.name,
    required this.provinceId,
    this.originPlace,
    this.category = RecipeCategory.utama,
    this.difficulty = Difficulty.sedang,
    required this.imageUrl,
    required this.description,
    required this.cookTimeMinutes,
    required this.servings,
    required this.ingredients,
    required this.steps,
    this.tags = const [],
    this.videoUrl,
    this.source,
    this.imageCredit,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'] as String,
      name: json['name'] as String,
      provinceId: json['provinceId'] as String,
      originPlace: json['originPlace'] as String?,
      category: RecipeCategory.fromString(json['category'] as String?),
      difficulty: Difficulty.fromString(json['difficulty'] as String?),
      imageUrl: json['imageUrl'] as String? ?? '',
      description: json['description'] as String? ?? '',
      cookTimeMinutes: (json['cookTimeMinutes'] as num?)?.toInt() ?? 0,
      servings: (json['servings'] as num?)?.toInt() ?? 1,
      ingredients: (json['ingredients'] as List<dynamic>? ?? [])
          .map((e) => e is String
              ? Ingredient(name: e) // dukung format sederhana: ["Ikan mas 1 kg"]
              : Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      steps: (json['steps'] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      tags: (json['tags'] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      videoUrl: json['videoUrl'] as String?,
      source: json['source'] as String?,
      imageCredit: json['imageCredit'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'provinceId': provinceId,
        if (originPlace != null) 'originPlace': originPlace,
        'category': category.name,
        'difficulty': difficulty.name,
        'imageUrl': imageUrl,
        'description': description,
        'cookTimeMinutes': cookTimeMinutes,
        'servings': servings,
        'ingredients': ingredients.map((e) => e.toJson()).toList(),
        'steps': steps,
        'tags': tags,
        if (videoUrl != null) 'videoUrl': videoUrl,
        if (source != null) 'source': source,
        if (imageCredit != null) 'imageCredit': imageCredit,
      };

  Recipe copyWith({
    String? id,
    String? name,
    String? provinceId,
    String? originPlace,
    RecipeCategory? category,
    Difficulty? difficulty,
    String? imageUrl,
    String? description,
    int? cookTimeMinutes,
    int? servings,
    List<Ingredient>? ingredients,
    List<String>? steps,
    List<String>? tags,
    String? videoUrl,
    String? source,
    String? imageCredit,
  }) {
    return Recipe(
      id: id ?? this.id,
      name: name ?? this.name,
      provinceId: provinceId ?? this.provinceId,
      originPlace: originPlace ?? this.originPlace,
      category: category ?? this.category,
      difficulty: difficulty ?? this.difficulty,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      cookTimeMinutes: cookTimeMinutes ?? this.cookTimeMinutes,
      servings: servings ?? this.servings,
      ingredients: ingredients ?? this.ingredients,
      steps: steps ?? this.steps,
      tags: tags ?? this.tags,
      videoUrl: videoUrl ?? this.videoUrl,
      source: source ?? this.source,
      imageCredit: imageCredit ?? this.imageCredit,
    );
  }

  /// Durasi masak dalam teks, contoh: "1 jam 30 menit".
  String get cookTimeLabel {
    final hours = cookTimeMinutes ~/ 60;
    final minutes = cookTimeMinutes % 60;
    if (hours == 0) return '$minutes menit';
    if (minutes == 0) return '$hours jam';
    return '$hours jam $minutes menit';
  }

  /// Cek kecocokan untuk fitur pencarian (nama, bahan, tag, daerah asal).
  bool matchesQuery(String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return true;
    return name.toLowerCase().contains(q) ||
        (originPlace?.toLowerCase().contains(q) ?? false) ||
        tags.any((t) => t.toLowerCase().contains(q)) ||
        ingredients.any((i) => i.name.toLowerCase().contains(q));
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Recipe && other.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Recipe(id: $id, name: $name, provinceId: $provinceId)';
}