import '../models/recipe.dart';

/// Resep khas Sumatera Utara (provinceId: 'sumut').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kSumutRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'sumut-001',
    name: 'Mi Gomak',
    provinceId: 'sumut',
    category: RecipeCategory.utama,
    difficulty: Difficulty.mudah,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Mi gomak adalah hidangan mi lidi khas Batak yang dimasak dengan bumbu rempah dan santan, lalu ditambah sayuran sesuai selera.',
    cookTimeMinutes: 25,
    servings: 3,
    tags: ['mie', 'batak', 'santan', 'rempah', 'sayur'],
    positiveImpacts: [
      'Mi menjadi sumber energi.',
      'Santan dan bahan tambahan memberikan cita rasa.',
      'Membantu melestarikan kuliner Batak.',
    ],
    negativeImpacts: [
      'Santan berlebihan dapat meningkatkan asupan lemak jenuh.',
      'Terlalu banyak garam dapat meningkatkan asupan natrium.',
    ],
    ingredients: [
      Ingredient(name: 'Mi lidi', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 200, unit: 'ml'),
      Ingredient(name: 'Bawang merah', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 2, unit: 'siung'),
      Ingredient(name: 'Cabai merah', quantity: 3, unit: 'buah'),
      Ingredient(name: 'Kunyit', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Sayuran', note: 'sesuai selera'),
    ],
    steps: [
      'Rebus mi lidi hingga matang, kemudian tiriskan.',
      'Haluskan bawang merah, bawang putih, cabai, dan kunyit.',
      'Tumis bumbu halus bersama serai hingga harum.',
      'Masukkan santan dan aduk perlahan.',
      'Tambahkan garam dan sayuran.',
      'Masukkan mi, aduk hingga bumbu meresap, lalu sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'sumut-002',
    name: 'Arsik Ikan Mas',
    provinceId: 'sumut',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Arsik adalah masakan ikan mas tradisional Batak Toba yang dimasak dengan bumbu rempah, andaliman, dan asam hingga bumbunya meresap.',
    cookTimeMinutes: 60,
    servings: 4,
    tags: ['ikan', 'batak toba', 'andaliman', 'rempah', 'tradisional'],
    positiveImpacts: [
      'Ikan mengandung protein.',
      'Mengandung berbagai zat gizi yang mendukung kesehatan.',
      'Menjaga tradisi kuliner Batak Toba.',
    ],
    negativeImpacts: [
      'Penggunaan garam berlebihan meningkatkan asupan natrium.',
      'Ikan yang tidak dimasak hingga matang dapat menimbulkan risiko penyakit.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan mas', quantity: 1, unit: 'ekor'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai merah', quantity: 3, unit: 'buah'),
      Ingredient(name: 'Kunyit', quantity: 2, unit: 'ruas'),
      Ingredient(name: 'Jahe', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai', quantity: 2, unit: 'batang'),
      Ingredient(name: 'Andaliman', note: 'secukupnya'),
      Ingredient(name: 'Asam cikala atau asam', note: 'sesuai selera'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan mas dan buat beberapa sayatan pada badannya.',
      'Haluskan bawang, cabai, kunyit, dan jahe.',
      'Susun serai dan bumbu di dasar panci.',
      'Letakkan ikan di atas bumbu, lalu tambahkan andaliman dan asam.',
      'Tuangkan air secukupnya.',
      'Masak dengan api kecil sampai ikan matang dan bumbu meresap.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'sumut-003',
    name: 'Bika Ambon',
    provinceId: 'sumut',
    originPlace: 'Medan',
    category: RecipeCategory.kue,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Bika ambon adalah kue panggang berbahan tepung, santan, dan telur dengan daun pandan, dikenal sebagai salah satu oleh-oleh khas Medan.',
    cookTimeMinutes: 90,
    servings: 8,
    tags: ['kue', 'oleh-oleh', 'medan', 'santan', 'panggang'],
    positiveImpacts: [
      'Menyediakan energi dari karbohidrat.',
      'Menjadi salah satu oleh-oleh khas Medan.',
      'Membantu mendukung usaha kuliner lokal.',
    ],
    negativeImpacts: [
      'Kandungan gula cukup tinggi jika dikonsumsi berlebihan.',
      'Santan dapat menambah asupan lemak jenuh.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung tapioka', quantity: 150, unit: 'gram'),
      Ingredient(name: 'Tepung terigu', quantity: 50, unit: 'gram'),
      Ingredient(name: 'Gula pasir', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 200, unit: 'ml'),
      Ingredient(name: 'Telur', quantity: 2, unit: 'butir'),
      Ingredient(name: 'Ragi instan', quantity: 1, unit: 'sendok teh'),
      Ingredient(name: 'Daun pandan', quantity: 2, unit: 'lembar'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
    ],
    steps: [
      'Rebus santan bersama pandan dan sedikit garam, lalu dinginkan.',
      'Campurkan ragi dengan sedikit air hangat dan gula.',
      'Masukkan tepung tapioka, tepung terigu, dan gula ke dalam wadah.',
      'Tambahkan telur, santan, serta larutan ragi.',
      'Aduk hingga rata dan diamkan sampai adonan mengembang.',
      'Tuang ke cetakan dan panggang hingga matang.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'sumut-004',
    name: 'Saksang',
    provinceId: 'sumut',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Saksang adalah masakan tradisional Batak berbumbu rempah dan andaliman. Resep ini memakai daging sapi; beberapa versi tradisional menggunakan daging babi, dan bahan serta bumbunya dapat berbeda menurut tradisi.',
    cookTimeMinutes: 90,
    servings: 4,
    tags: ['daging sapi', 'batak', 'andaliman', 'rempah', 'tradisional'],
    positiveImpacts: [
      'Daging sapi menyediakan protein, zat besi, dan vitamin B12.',
      'Memperkenalkan tradisi kuliner masyarakat Batak.',
    ],
    negativeImpacts: [
      'Daging berlemak dapat meningkatkan asupan lemak jenuh.',
      'Konsumsi daging merah secara berlebihan tidak dianjurkan.',
    ],
    ingredients: [
      Ingredient(name: 'Daging sapi', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai', note: 'sesuai selera'),
      Ingredient(name: 'Jahe', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Lengkuas', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai'),
      Ingredient(name: 'Daun jeruk'),
      Ingredient(name: 'Andaliman', note: 'jika tersedia'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Potong daging sapi menjadi bagian kecil.',
      'Haluskan bawang, cabai, jahe, dan lengkuas.',
      'Tumis bumbu bersama serai dan daun jeruk.',
      'Masukkan daging dan aduk hingga berubah warna.',
      'Tambahkan air dan masak sampai daging empuk serta matang sempurna.',
      'Tambahkan andaliman dan garam secukupnya, lalu sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'sumut-005',
    name: 'Ombus-ombus',
    provinceId: 'sumut',
    category: RecipeCategory.jajanan,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Ombus-ombus adalah kue tradisional Sumatera Utara dari tepung beras dan kelapa parut dengan isian gula merah, dibungkus daun pisang lalu dikukus.',
    cookTimeMinutes: 45,
    servings: 8,
    tags: ['kue', 'tradisional', 'kukus', 'tepung beras', 'gula merah'],
    positiveImpacts: [
      'Menyediakan energi dari tepung beras.',
      'Kelapa memberikan rasa dan tekstur khas.',
      'Melestarikan makanan tradisional Sumatera Utara.',
    ],
    negativeImpacts: [
      'Gula merah tetap menambah asupan gula.',
      'Jika dimakan berlebihan, asupan energi dapat melebihi kebutuhan tubuh.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung beras', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Kelapa parut', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Gula merah', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Garam', note: 'sedikit'),
      Ingredient(name: 'Daun pisang', note: 'untuk membungkus'),
    ],
    steps: [
      'Campurkan tepung beras, kelapa parut, dan sedikit garam.',
      'Potong gula merah menjadi bagian kecil.',
      'Letakkan adonan tepung pada daun pisang.',
      'Tambahkan gula merah di tengahnya.',
      'Bungkus adonan hingga rapat.',
      'Kukus selama kurang lebih 25–30 menit sampai matang.',
    ],
  ),
];