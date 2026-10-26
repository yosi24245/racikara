import '../models/recipe.dart';

/// Resep khas Riau (provinceId: 'riau').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kRiauRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'riau-001',
    name: 'Gulai Ikan Patin',
    provinceId: 'riau',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Gulai ikan patin adalah masakan ikan patin berkuah santan dengan bumbu rempah, salah satu hidangan yang dikenal dalam kuliner Riau.',
    cookTimeMinutes: 40,
    servings: 4,
    tags: ['ikan', 'patin', 'gulai', 'santan', 'rempah'],
    positiveImpacts: [
      'Ikan patin mengandung protein.',
      'Menjadi salah satu hidangan yang dikenal dalam kuliner Riau.',
      'Mendukung usaha perikanan dan kuliner setempat.',
    ],
    negativeImpacts: [
      'Santan berlebihan dapat meningkatkan asupan lemak jenuh.',
      'Garam berlebihan dapat meningkatkan asupan natrium.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan patin', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 400, unit: 'ml'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai merah', quantity: 5, unit: 'buah'),
      Ingredient(name: 'Kunyit', quantity: 2, unit: 'cm'),
      Ingredient(name: 'Jahe', quantity: 2, unit: 'cm'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Air', note: 'sedikit'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan patin dan potong sesuai selera.',
      'Haluskan bawang merah, bawang putih, cabai, kunyit, dan jahe.',
      'Tumis bumbu hingga harum.',
      'Masukkan serai, santan, dan sedikit air.',
      'Aduk perlahan hingga kuah mendidih.',
      'Masukkan ikan patin dan masak sampai matang.',
      'Tambahkan garam secukupnya, lalu sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'riau-002',
    name: 'Mie Sagu',
    provinceId: 'riau',
    category: RecipeCategory.utama,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Mie sagu adalah hidangan mi dari sagu yang ditumis dengan bawang, cabai, ikan teri atau udang, dan tauge, memanfaatkan sagu sebagai pangan lokal Riau.',
    cookTimeMinutes: 20,
    servings: 3,
    tags: ['mie', 'sagu', 'tumis', 'ikan teri', 'udang'],
    positiveImpacts: [
      'Sagu merupakan sumber karbohidrat dan energi.',
      'Ikan atau udang menambah protein.',
      'Memperkenalkan pemanfaatan sagu sebagai pangan lokal Riau.',
    ],
    negativeImpacts: [
      'Mi sagu saja tidak menyediakan seluruh zat gizi yang diperlukan tubuh.',
      'Terlalu banyak minyak dan garam dapat mengurangi keseimbangan gizi.',
    ],
    ingredients: [
      Ingredient(name: 'Mi sagu', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Ikan teri atau udang', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Bawang putih', quantity: 2, unit: 'siung'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Cabai', note: 'sesuai selera'),
      Ingredient(name: 'Tauge'),
      Ingredient(name: 'Daun bawang'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Minyak goreng', note: 'untuk menumis'),
    ],
    steps: [
      'Rendam mi sagu sesuai petunjuk pada kemasan, kemudian tiriskan.',
      'Iris bawang merah dan bawang putih.',
      'Tumis bawang dan cabai hingga harum.',
      'Masukkan ikan teri atau udang, lalu masak hingga matang.',
      'Tambahkan mi sagu dan tauge.',
      'Aduk hingga bumbu tercampur rata.',
      'Tambahkan daun bawang dan garam secukupnya, lalu sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'riau-003',
    name: 'Asam Pedas Ikan Baung',
    provinceId: 'riau',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Asam pedas ikan baung adalah masakan ikan berkuah dengan cita rasa asam dan pedas dari cabai, bumbu rempah, dan asam jawa.',
    cookTimeMinutes: 40,
    servings: 4,
    tags: ['ikan', 'baung', 'asam pedas', 'pedas', 'kuah'],
    positiveImpacts: [
      'Ikan mengandung protein dan berbagai zat gizi.',
      'Menggunakan bumbu dan bahan pangan lokal.',
      'Membantu melestarikan masakan tradisional daerah.',
    ],
    negativeImpacts: [
      'Terlalu banyak garam dapat meningkatkan asupan natrium.',
      'Ikan yang tidak dimasak sampai matang berisiko membawa mikroorganisme penyebab penyakit.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan baung', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Cabai merah', quantity: 5, unit: 'buah'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Kunyit', quantity: 2, unit: 'cm'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Asam jawa', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan baung dan potong sesuai kebutuhan.',
      'Haluskan cabai, bawang merah, bawang putih, dan kunyit.',
      'Tumis bumbu bersama serai hingga harum.',
      'Tambahkan air dan asam jawa.',
      'Masukkan ikan setelah kuah mendidih perlahan.',
      'Masak hingga ikan matang dan bumbu meresap.',
      'Tambahkan garam secukupnya, kemudian sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'riau-004',
    name: 'Bolu Kemojo',
    provinceId: 'riau',
    category: RecipeCategory.kue,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Bolu kemojo adalah kue panggang berbahan tepung terigu, telur, dan santan beraroma pandan, salah satu kue yang dikenal dalam kuliner Melayu Riau.',
    cookTimeMinutes: 75,
    servings: 10,
    tags: ['kue', 'bolu', 'santan', 'pandan', 'melayu', 'panggang'],
    positiveImpacts: [
      'Menyediakan energi dari tepung dan gula.',
      'Menjadi salah satu kue yang dikenal dalam kuliner Melayu Riau.',
      'Dapat menjadi peluang usaha rumahan.',
    ],
    negativeImpacts: [
      'Kandungan gula dapat cukup tinggi.',
      'Santan dan margarin dapat menambah asupan lemak jenuh.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung terigu', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Gula pasir', quantity: 200, unit: 'gram'),
      Ingredient(name: 'Telur', quantity: 3, unit: 'butir'),
      Ingredient(name: 'Santan', quantity: 400, unit: 'ml'),
      Ingredient(name: 'Margarin cair', quantity: 50, unit: 'gram'),
      Ingredient(name: 'Air pandan atau pasta pandan', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'sejumput'),
    ],
    steps: [
      'Kocok telur dan gula hingga tercampur rata.',
      'Masukkan tepung terigu sedikit demi sedikit.',
      'Tambahkan santan, margarin cair, dan pandan.',
      'Aduk hingga adonan halus.',
      'Tuangkan adonan ke loyang yang sudah diolesi margarin.',
      'Panggang pada suhu sekitar 170–180°C hingga matang, kurang lebih 40–50 menit, tergantung oven.',
      'Dinginkan sebelum dipotong dan disajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'riau-005',
    name: 'Roti Jala dengan Kuah Kari',
    provinceId: 'riau',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Roti jala adalah roti tipis berbentuk jaring dari adonan tepung, telur, dan santan atau susu, disajikan bersama kuah kari ayam. Hidangan ini mencerminkan tradisi kuliner Melayu.',
    cookTimeMinutes: 60,
    servings: 4,
    tags: ['roti jala', 'kari', 'ayam', 'melayu', 'santan'],
    positiveImpacts: [
      'Tepung menyediakan energi dan ayam menyediakan protein.',
      'Mencerminkan tradisi kuliner Melayu.',
      'Dapat menjadi sumber pendapatan bagi pedagang makanan.',
    ],
    negativeImpacts: [
      'Kuah santan dapat meningkatkan asupan lemak jenuh.',
      'Konsumsi berlebihan dapat menambah asupan kalori dan garam.',
    ],
    ingredients: [
      // Roti jala
      Ingredient(
        name: 'Tepung terigu',
        quantity: 200,
        unit: 'gram',
        note: 'roti jala',
      ),
      Ingredient(
        name: 'Telur',
        quantity: 1,
        unit: 'butir',
        note: 'roti jala',
      ),
      Ingredient(
        name: 'Santan atau susu',
        quantity: 300,
        unit: 'ml',
        note: 'roti jala',
      ),
      Ingredient(name: 'Garam', note: 'roti jala, sejumput'),
      Ingredient(name: 'Minyak goreng', note: 'roti jala, sedikit'),
      // Kuah kari
      Ingredient(
        name: 'Ayam',
        quantity: 300,
        unit: 'gram',
        note: 'kuah kari',
      ),
      Ingredient(
        name: 'Bawang merah',
        quantity: 4,
        unit: 'siung',
        note: 'kuah kari',
      ),
      Ingredient(
        name: 'Bawang putih',
        quantity: 3,
        unit: 'siung',
        note: 'kuah kari',
      ),
      Ingredient(
        name: 'Bubuk kari',
        quantity: 2,
        unit: 'sendok teh',
        note: 'kuah kari',
      ),
      Ingredient(
        name: 'Santan',
        quantity: 200,
        unit: 'ml',
        note: 'kuah kari',
      ),
      Ingredient(name: 'Air', note: 'kuah kari, secukupnya'),
      Ingredient(name: 'Garam', note: 'kuah kari, secukupnya'),
    ],
    steps: [
      'Campurkan tepung, telur, santan atau susu, dan garam hingga halus.',
      'Masukkan adonan ke botol berlubang kecil atau cetakan roti jala.',
      'Tuangkan adonan membentuk jaring-jaring di atas wajan datar.',
      'Masak hingga matang, lalu lipat atau gulung.',
      'Untuk kari, haluskan bawang merah dan bawang putih.',
      'Tumis bumbu bersama bubuk kari.',
      'Masukkan ayam dan air, lalu masak hingga ayam empuk.',
      'Tambahkan santan dan garam, aduk perlahan hingga matang.',
      'Sajikan roti jala bersama kuah kari.',
    ],
  ),
];