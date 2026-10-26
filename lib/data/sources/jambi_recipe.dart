import '../models/recipe.dart';

/// Resep khas Jambi (provinceId: 'jambi').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kJambiRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'jambi-001',
    name: 'Gulai Tepek Ikan',
    provinceId: 'jambi',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Gulai tepek ikan adalah olahan ikan giling dan tapioka yang dibentuk pipih memanjang, direbus, lalu dimasak dalam kuah gulai santan berbumbu kunyit dan serai. Hidangan ini mengenalkan kuliner khas Jambi.',
    cookTimeMinutes: 60,
    servings: 4,
    tags: ['ikan', 'gulai', 'santan', 'tapioka', 'jambi'],
    positiveImpacts: [
      'Ikan mengandung protein.',
      'Mengenalkan kuliner khas Jambi.',
      'Membantu mendukung usaha kuliner lokal.',
    ],
    negativeImpacts: [
      'Santan berlebihan dapat meningkatkan asupan lemak jenuh.',
      'Garam berlebihan dapat meningkatkan asupan natrium.',
    ],
    ingredients: [
      Ingredient(name: 'Daging ikan giling', quantity: 300, unit: 'gram'),
      Ingredient(name: 'Tepung tapioka', quantity: 150, unit: 'gram'),
      Ingredient(name: 'Telur', quantity: 1, unit: 'butir'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Santan', note: 'secukupnya'),
      Ingredient(name: 'Serai', note: 'secukupnya'),
      Ingredient(name: 'Kunyit', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Campurkan ikan giling, tepung tapioka, telur, dan sedikit garam.',
      'Uleni sampai adonan dapat dibentuk.',
      'Bentuk adonan menjadi pipih memanjang.',
      'Rebus hingga matang, kemudian tiriskan dan potong-potong.',
      'Haluskan bawang merah, bawang putih, dan kunyit.',
      'Tumis bumbu bersama serai hingga harum.',
      'Tambahkan santan dan air secukupnya.',
      'Masukkan tepek ikan dan masak hingga bumbu meresap.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'jambi-002',
    name: 'Tempoyak Ikan Patin',
    provinceId: 'jambi',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Tempoyak ikan patin adalah masakan ikan patin berkuah bumbu rempah dengan tempoyak, yaitu durian yang difermentasi, salah satu hidangan yang dikenal dalam kuliner Jambi.',
    cookTimeMinutes: 40,
    servings: 4,
    tags: ['ikan', 'patin', 'tempoyak', 'durian', 'fermentasi'],
    positiveImpacts: [
      'Ikan menyediakan protein.',
      'Memanfaatkan durian yang difermentasi sebagai bahan pangan tradisional.',
      'Menjadi salah satu hidangan yang dikenal dalam kuliner Jambi.',
    ],
    negativeImpacts: [
      'Tempoyak yang dibuat atau disimpan secara tidak higienis dapat berisiko bagi kesehatan.',
      'Garam berlebihan dapat meningkatkan asupan natrium.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan patin', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Tempoyak', note: '3–4 sendok makan'),
      Ingredient(name: 'Cabai merah', quantity: 5, unit: 'buah'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 2, unit: 'siung'),
      Ingredient(name: 'Kunyit', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Air', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan patin dan potong sesuai selera.',
      'Haluskan cabai, bawang merah, bawang putih, dan kunyit.',
      'Tumis bumbu bersama serai hingga harum.',
      'Tambahkan tempoyak dan air secukupnya, lalu aduk rata.',
      'Masukkan ikan patin setelah kuah mendidih perlahan.',
      'Masak sampai ikan matang dan bumbu meresap.',
      'Tambahkan sedikit garam jika diperlukan, kemudian sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'jambi-003',
    name: 'Nasi Gemuk',
    provinceId: 'jambi',
    category: RecipeCategory.utama,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Nasi gemuk adalah nasi gurih yang dimasak dengan santan, daun salam, dan serai, lalu disajikan dengan telur rebus, kacang, dan sambal. Hidangan ini menjadi bagian dari kebiasaan kuliner masyarakat Jambi.',
    cookTimeMinutes: 50,
    servings: 5,
    tags: ['nasi', 'santan', 'sarapan', 'telur', 'sambal'],
    positiveImpacts: [
      'Beras menyediakan energi untuk aktivitas sehari-hari.',
      'Telur menambah protein.',
      'Menjadi bagian dari kebiasaan kuliner masyarakat Jambi.',
    ],
    negativeImpacts: [
      'Konsumsi nasi dalam porsi berlebihan dapat membuat asupan energi melebihi kebutuhan.',
      'Santan dan sambal yang terlalu asin dapat meningkatkan asupan lemak jenuh dan natrium.',
    ],
    ingredients: [
      Ingredient(name: 'Beras', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 200, unit: 'ml'),
      Ingredient(name: 'Daun salam', quantity: 2, unit: 'lembar'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya, sesuai kebutuhan beras'),
      Ingredient(name: 'Telur rebus', note: 'pelengkap'),
      Ingredient(name: 'Kacang', note: 'pelengkap'),
      Ingredient(name: 'Sambal', note: 'pelengkap'),
    ],
    steps: [
      'Cuci beras hingga bersih.',
      'Masukkan beras ke dalam panci bersama santan, daun salam, serai, dan sedikit garam.',
      'Tambahkan air secukupnya sesuai kebutuhan beras.',
      'Masak hingga air terserap.',
      'Kukus nasi sampai benar-benar matang.',
      'Sajikan dengan telur rebus, kacang, dan sambal.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'jambi-004',
    name: 'Kue Padamaran',
    provinceId: 'jambi',
    category: RecipeCategory.kue,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Kue padamaran adalah jajanan tradisional dari tepung beras dan santan beraroma pandan dengan gula merah di bagian bawah, dibuat dalam wadah daun pisang lalu dikukus.',
    cookTimeMinutes: 60,
    servings: 6,
    tags: ['kue', 'jajanan', 'kukus', 'santan', 'pandan', 'gula merah'],
    positiveImpacts: [
      'Tepung beras menyediakan energi.',
      'Menjadi jajanan tradisional yang membantu melestarikan budaya Jambi.',
      'Dapat menjadi peluang usaha rumahan.',
    ],
    negativeImpacts: [
      'Gula merah menambah asupan gula.',
      'Santan mengandung lemak jenuh sehingga sebaiknya dikonsumsi secukupnya.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung beras', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 500, unit: 'ml'),
      Ingredient(name: 'Gula merah', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Air pandan atau sari pandan', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'sejumput'),
      Ingredient(name: 'Daun pisang', note: 'untuk wadah'),
    ],
    steps: [
      'Larutkan tepung beras dengan sebagian santan.',
      'Tambahkan sari pandan dan sedikit garam.',
      'Panaskan sisa santan, kemudian masukkan campuran tepung.',
      'Aduk terus hingga adonan mengental.',
      'Siapkan wadah dari daun pisang dan letakkan gula merah di bagian bawah.',
      'Tuangkan adonan ke dalam wadah.',
      'Kukus sekitar 20–30 menit hingga matang.',
      'Dinginkan sebentar sebelum disajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'jambi-005',
    name: 'Gulai Terjun',
    provinceId: 'jambi',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Gulai terjun adalah masakan tradisional Jambi berupa daging sapi yang dimasak dengan bumbu rempah dan santan atau air, disajikan dengan nasi.',
    cookTimeMinutes: 90,
    servings: 4,
    tags: ['daging sapi', 'gulai', 'santan', 'rempah', 'tradisional'],
    positiveImpacts: [
      'Daging sapi menyediakan protein, zat besi, dan vitamin B12.',
      'Memperkenalkan masakan tradisional Jambi.',
      'Dapat mendukung usaha kuliner masyarakat.',
    ],
    negativeImpacts: [
      'Daging berlemak dan santan dapat meningkatkan asupan lemak jenuh.',
      'Konsumsi daging merah secara berlebihan tidak dianjurkan.',
    ],
    ingredients: [
      Ingredient(name: 'Daging sapi', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai merah', quantity: 5, unit: 'buah'),
      Ingredient(name: 'Kunyit', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Jahe', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Santan atau air', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
    ],
    steps: [
      'Potong daging sapi menjadi bagian kecil.',
      'Haluskan bawang merah, bawang putih, cabai, kunyit, dan jahe.',
      'Tumis bumbu bersama serai hingga harum.',
      'Masukkan daging dan aduk hingga berubah warna.',
      'Tambahkan air atau santan sesuai resep yang digunakan.',
      'Masak dengan api sedang hingga daging empuk dan matang sempurna.',
      'Tambahkan garam secukupnya, lalu sajikan dengan nasi.',
    ],
  ),
];