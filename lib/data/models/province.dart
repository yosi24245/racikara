import 'package:flutter/foundation.dart';

/// Kelompok pulau/wilayah, berguna untuk filter dan pengelompokan di UI.
enum IslandGroup {
  sumatera,
  jawa,
  baliNusaTenggara,
  kalimantan,
  sulawesi,
  malukuPapua;

  String get label {
    switch (this) {
      case IslandGroup.sumatera:
        return 'Sumatera';
      case IslandGroup.jawa:
        return 'Jawa';
      case IslandGroup.baliNusaTenggara:
        return 'Bali & Nusa Tenggara';
      case IslandGroup.kalimantan:
        return 'Kalimantan';
      case IslandGroup.sulawesi:
        return 'Sulawesi';
      case IslandGroup.malukuPapua:
        return 'Maluku & Papua';
    }
  }

  static IslandGroup fromString(String? value) {
    return IslandGroup.values.firstWhere(
      (g) => g.name == value,
      orElse: () => IslandGroup.jawa,
    );
  }
}

/// Model provinsi untuk peta dan pengelompokan resep.
@immutable
class Province {
  final String id; // contoh: "sumut"
  final String name; // contoh: "Sumatera Utara"
  final double latitude; // titik tengah untuk marker
  final double longitude;
  final IslandGroup island;
  final String? capital;
  final String? description;
  final String? imageUrl;

  /// Jumlah resep di provinsi ini. Diisi saat runtime, bukan dari JSON.
  final int recipeCount;

  const Province({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.island,
    this.capital,
    this.description,
    this.imageUrl,
    this.recipeCount = 0,
  });

  factory Province.fromJson(Map<String, dynamic> json) {
    return Province(
      id: json['id'] as String,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      island: IslandGroup.fromString(json['island'] as String?),
      capital: json['capital'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'latitude': latitude,
        'longitude': longitude,
        'island': island.name,
        if (capital != null) 'capital': capital,
        if (description != null) 'description': description,
        if (imageUrl != null) 'imageUrl': imageUrl,
      };

  Province copyWith({
    String? id,
    String? name,
    double? latitude,
    double? longitude,
    IslandGroup? island,
    String? capital,
    String? description,
    String? imageUrl,
    int? recipeCount,
  }) {
    return Province(
      id: id ?? this.id,
      name: name ?? this.name,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      island: island ?? this.island,
      capital: capital ?? this.capital,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      recipeCount: recipeCount ?? this.recipeCount,
    );
  }

  /// Untuk flutter_map: `LatLng(province.latitude, province.longitude)`.
  /// Model ini sengaja tidak mengimpor latlong2 agar tetap bebas dependensi.

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Province && other.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Province(id: $id, name: $name)';
}

/// Daftar bawaan provinsi (titik tengah perkiraan).
/// Anda bisa memakai ini langsung atau memindahkannya ke assets/data/provinces.json.
const List<Province> kProvinces = [
  // Sumatera
  Province(id: 'aceh', name: 'Aceh', latitude: 4.6951, longitude: 96.7494, island: IslandGroup.sumatera, capital: 'Banda Aceh'),
  Province(id: 'sumut', name: 'Sumatera Utara', latitude: 2.1154, longitude: 99.5451, island: IslandGroup.sumatera, capital: 'Medan'),
  Province(id: 'sumbar', name: 'Sumatera Barat', latitude: -0.7399, longitude: 100.8000, island: IslandGroup.sumatera, capital: 'Padang'),
  Province(id: 'riau', name: 'Riau', latitude: 0.2933, longitude: 101.7068, island: IslandGroup.sumatera, capital: 'Pekanbaru'),
  Province(id: 'kepri', name: 'Kepulauan Riau', latitude: 3.9457, longitude: 108.1429, island: IslandGroup.sumatera, capital: 'Tanjung Pinang'),
  Province(id: 'jambi', name: 'Jambi', latitude: -1.4852, longitude: 102.4381, island: IslandGroup.sumatera, capital: 'Jambi'),
  Province(id: 'sumsel', name: 'Sumatera Selatan', latitude: -3.3194, longitude: 103.9144, island: IslandGroup.sumatera, capital: 'Palembang'),
  Province(id: 'babel', name: 'Kepulauan Bangka Belitung', latitude: -2.7411, longitude: 106.4406, island: IslandGroup.sumatera, capital: 'Pangkal Pinang'),
  Province(id: 'bengkulu', name: 'Bengkulu', latitude: -3.7928, longitude: 102.2608, island: IslandGroup.sumatera, capital: 'Bengkulu'),
  Province(id: 'lampung', name: 'Lampung', latitude: -4.5586, longitude: 105.4068, island: IslandGroup.sumatera, capital: 'Bandar Lampung'),

  // Jawa
  Province(id: 'banten', name: 'Banten', latitude: -6.4058, longitude: 106.0640, island: IslandGroup.jawa, capital: 'Serang'),
  Province(id: 'dki', name: 'DKI Jakarta', latitude: -6.2088, longitude: 106.8456, island: IslandGroup.jawa, capital: 'Jakarta'),
  Province(id: 'jabar', name: 'Jawa Barat', latitude: -6.9175, longitude: 107.6191, island: IslandGroup.jawa, capital: 'Bandung'),
  Province(id: 'jateng', name: 'Jawa Tengah', latitude: -7.1500, longitude: 110.1403, island: IslandGroup.jawa, capital: 'Semarang'),
  Province(id: 'diy', name: 'DI Yogyakarta', latitude: -7.7956, longitude: 110.3695, island: IslandGroup.jawa, capital: 'Yogyakarta'),
  Province(id: 'jatim', name: 'Jawa Timur', latitude: -7.5361, longitude: 112.2384, island: IslandGroup.jawa, capital: 'Surabaya'),

  // Bali & Nusa Tenggara
  Province(id: 'bali', name: 'Bali', latitude: -8.4095, longitude: 115.1889, island: IslandGroup.baliNusaTenggara, capital: 'Denpasar'),
  Province(id: 'ntb', name: 'Nusa Tenggara Barat', latitude: -8.6529, longitude: 117.3616, island: IslandGroup.baliNusaTenggara, capital: 'Mataram'),
  Province(id: 'ntt', name: 'Nusa Tenggara Timur', latitude: -8.6574, longitude: 121.0794, island: IslandGroup.baliNusaTenggara, capital: 'Kupang'),

  // Kalimantan
  Province(id: 'kalbar', name: 'Kalimantan Barat', latitude: -0.2788, longitude: 111.4753, island: IslandGroup.kalimantan, capital: 'Pontianak'),
  Province(id: 'kalteng', name: 'Kalimantan Tengah', latitude: -1.6815, longitude: 113.3824, island: IslandGroup.kalimantan, capital: 'Palangka Raya'),
  Province(id: 'kalsel', name: 'Kalimantan Selatan', latitude: -3.0926, longitude: 115.2838, island: IslandGroup.kalimantan, capital: 'Banjarmasin'),
  Province(id: 'kaltim', name: 'Kalimantan Timur', latitude: 0.5387, longitude: 116.4194, island: IslandGroup.kalimantan, capital: 'Samarinda'),
  Province(id: 'kaltara', name: 'Kalimantan Utara', latitude: 3.0731, longitude: 116.0414, island: IslandGroup.kalimantan, capital: 'Tanjung Selor'),

  // Sulawesi
  Province(id: 'sulut', name: 'Sulawesi Utara', latitude: 0.6247, longitude: 123.9750, island: IslandGroup.sulawesi, capital: 'Manado'),
  Province(id: 'gorontalo', name: 'Gorontalo', latitude: 0.6999, longitude: 122.4467, island: IslandGroup.sulawesi, capital: 'Gorontalo'),
  Province(id: 'sulteng', name: 'Sulawesi Tengah', latitude: -1.4300, longitude: 121.4456, island: IslandGroup.sulawesi, capital: 'Palu'),
  Province(id: 'sulbar', name: 'Sulawesi Barat', latitude: -2.8441, longitude: 119.2321, island: IslandGroup.sulawesi, capital: 'Mamuju'),
  Province(id: 'sulsel', name: 'Sulawesi Selatan', latitude: -3.6688, longitude: 119.9741, island: IslandGroup.sulawesi, capital: 'Makassar'),
  Province(id: 'sultra', name: 'Sulawesi Tenggara', latitude: -4.1449, longitude: 122.1746, island: IslandGroup.sulawesi, capital: 'Kendari'),

  // Maluku & Papua
  Province(id: 'maluku', name: 'Maluku', latitude: -3.2385, longitude: 130.1453, island: IslandGroup.malukuPapua, capital: 'Ambon'),
  Province(id: 'malut', name: 'Maluku Utara', latitude: 1.5709, longitude: 127.8088, island: IslandGroup.malukuPapua, capital: 'Sofifi'),
  Province(id: 'papbar', name: 'Papua Barat', latitude: -1.3361, longitude: 133.1747, island: IslandGroup.malukuPapua, capital: 'Manokwari'),
  Province(id: 'papbd', name: 'Papua Barat Daya', latitude: -1.2800, longitude: 131.5000, island: IslandGroup.malukuPapua, capital: 'Sorong'),
  Province(id: 'papua', name: 'Papua', latitude: -4.2699, longitude: 138.0804, island: IslandGroup.malukuPapua, capital: 'Jayapura'),
  Province(id: 'papteng', name: 'Papua Tengah', latitude: -3.9000, longitude: 136.2000, island: IslandGroup.malukuPapua, capital: 'Nabire'),
  Province(id: 'pappeg', name: 'Papua Pegunungan', latitude: -4.1000, longitude: 139.0000, island: IslandGroup.malukuPapua, capital: 'Jayawijaya'),
  Province(id: 'papsel', name: 'Papua Selatan', latitude: -7.5000, longitude: 139.5000, island: IslandGroup.malukuPapua, capital: 'Merauke'),
];