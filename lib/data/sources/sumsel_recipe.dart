import '../models/recipe.dart';

/// Resep khas Sumatera Selatan (provinceId: 'sumsel').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kSumselRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'sumsel-001',
    name: 'Pempek',
    provinceId: 'sumsel',
    originPlace: 'Palembang',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Pempek adalah olahan ikan tenggiri giling dan tapioka yang dibentuk lenjer atau kapal selam berisi telur, direbus, lalu disajikan dengan kuah cuko. Hidangan ini merupakan kuliner khas Palembang.',
    cookTimeMinutes: 75,
    servings: 6,
    tags: ['ikan', 'tenggiri', 'tapioka', 'kapal selam', 'cuko', 'palembang'],
    positiveImpacts: [
      'Ikan mengandung protein.',
      'Memperkenalkan kuliner khas Palembang.',
      'Menjadi peluang usaha makanan.',
    ],
    negativeImpacts: [
      'Kuah cuko yang terlalu manis dapat menambah asupan gula.',
      'Pempek goreng mengandung lebih banyak lemak dibandingkan pempek rebus.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan tenggiri giling', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Tepung tapioka', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Air', quantity: 200, unit: 'ml'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Telur', note: 'untuk isian kapal selam'),
      // Kuah cuko
      Ingredient(name: 'Gula merah', note: 'kuah cuko'),
      Ingredient(name: 'Cabai', note: 'kuah cuko'),
      Ingredient(name: 'Bawang putih', note: 'kuah cuko'),
      Ingredient(name: 'Asam jawa', note: 'kuah cuko'),
      Ingredient(name: 'Air', note: 'kuah cuko'),
    ],
    steps: [
      'Campurkan ikan giling, air, dan garam.',
      'Masukkan tepung tapioka sedikit demi sedikit.',
      'Aduk hingga adonan dapat dibentuk.',
      'Bentuk adonan menjadi lenjer atau kapal selam.',
      'Untuk kapal selam, masukkan telur ke dalam adonan.',
      'Rebus pempek hingga mengapung dan matang.',
      'Angkat dan tiriskan.',
      'Sajikan dengan kuah cuko.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'sumsel-002',
    name: 'Tekwan',
    provinceId: 'sumsel',
    originPlace: 'Palembang',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Tekwan adalah hidangan bulatan ikan dan tapioka dalam kuah udang dengan jamur kuping dan bengkuang, ditaburi daun bawang dan seledri. Hidangan ini merupakan makanan khas Palembang.',
    cookTimeMinutes: 50,
    servings: 4,
    tags: ['ikan', 'udang', 'kuah', 'tapioka', 'bengkuang', 'palembang'],
    positiveImpacts: [
      'Ikan dan udang menyediakan protein.',
      'Kuah dapat membantu memenuhi kebutuhan cairan.',
      'Melestarikan makanan khas Palembang.',
    ],
    negativeImpacts: [
      'Penggunaan garam dan penyedap berlebihan meningkatkan asupan natrium.',
      'Orang yang alergi ikan atau udang perlu menghindari bahan pemicunya.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan giling', quantity: 300, unit: 'gram'),
      Ingredient(name: 'Tepung tapioka', quantity: 150, unit: 'gram'),
      Ingredient(name: 'Bawang putih', quantity: 2, unit: 'siung'),
      Ingredient(name: 'Udang', note: 'secukupnya'),
      Ingredient(name: 'Jamur kuping'),
      Ingredient(name: 'Bengkuang'),
      Ingredient(name: 'Daun bawang'),
      Ingredient(name: 'Seledri'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Merica', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'untuk kuah'),
    ],
    steps: [
      'Campurkan ikan giling dengan tepung tapioka dan sedikit garam.',
      'Bentuk adonan menjadi bulatan kecil.',
      'Rebus bulatan adonan hingga matang.',
      'Tumis bawang putih sampai harum.',
      'Tambahkan air dan udang untuk membuat kuah.',
      'Masukkan jamur kuping dan bengkuang.',
      'Tambahkan bulatan ikan ke dalam kuah.',
      'Bumbui secukupnya dan sajikan dengan daun bawang serta seledri.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'sumsel-003',
    name: 'Model',
    provinceId: 'sumsel',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Model adalah hidangan bulatan atau potongan adonan ikan dan tapioka bersama tahu dalam kuah bawang putih, disajikan dengan mi kuning serta taburan daun bawang dan seledri.',
    cookTimeMinutes: 50,
    servings: 4,
    tags: ['ikan', 'tahu', 'kuah', 'mi kuning', 'tapioka'],
    positiveImpacts: [
      'Ikan menyediakan protein.',
      'Tahu mengandung protein nabati.',
      'Menambah variasi makanan tradisional daerah.',
    ],
    negativeImpacts: [
      'Kuah yang terlalu asin dapat meningkatkan asupan natrium.',
      'Porsi mi yang berlebihan dapat membuat asupan energi melebihi kebutuhan.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan giling', quantity: 300, unit: 'gram'),
      Ingredient(name: 'Tepung tapioka', quantity: 150, unit: 'gram'),
      Ingredient(name: 'Tahu', note: 'secukupnya'),
      Ingredient(name: 'Mi kuning'),
      Ingredient(name: 'Bawang putih'),
      Ingredient(name: 'Daun bawang'),
      Ingredient(name: 'Seledri'),
      Ingredient(name: 'Garam'),
      Ingredient(name: 'Merica'),
      Ingredient(name: 'Air', note: 'untuk kuah'),
    ],
    steps: [
      'Campurkan ikan giling, tepung tapioka, dan sedikit garam.',
      'Bentuk adonan menjadi bulatan atau potongan kecil.',
      'Rebus hingga matang.',
      'Rebus tahu sebentar dan potong sesuai selera.',
      'Haluskan bawang putih, kemudian tumis hingga harum.',
      'Tambahkan air dan bumbui kuah.',
      'Masukkan adonan ikan dan tahu.',
      'Sajikan bersama mi kuning dan taburan daun bawang.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'sumsel-004',
    name: 'Pindang Patin',
    provinceId: 'sumsel',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Pindang patin adalah masakan ikan patin berkuah bumbu rempah dengan nanas dan tomat, memperkenalkan masakan khas Sumatera Selatan.',
    cookTimeMinutes: 45,
    servings: 4,
    tags: ['ikan', 'patin', 'pindang', 'kuah', 'nanas'],
    positiveImpacts: [
      'Ikan patin mengandung protein.',
      'Tomat dan nanas menambah variasi bahan pangan.',
      'Memperkenalkan masakan khas Sumatera Selatan.',
    ],
    negativeImpacts: [
      'Garam berlebihan dapat meningkatkan asupan natrium.',
      'Ikan yang tidak dimasak sampai matang dapat menimbulkan risiko penyakit bawaan makanan.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan patin', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai', quantity: 5, unit: 'buah'),
      Ingredient(name: 'Kunyit', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Jahe', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Nanas', note: 'secukupnya'),
      Ingredient(name: 'Tomat', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Gula', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan patin dan potong-potong.',
      'Haluskan bawang merah, bawang putih, cabai, kunyit, dan jahe.',
      'Tumis bumbu bersama serai hingga harum.',
      'Tambahkan air dan didihkan.',
      'Masukkan potongan nanas dan tomat.',
      'Masukkan ikan patin dengan hati-hati.',
      'Masak hingga ikan matang sempurna.',
      'Tambahkan garam secukupnya dan sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'sumsel-005',
    name: 'Kue Maksuba',
    provinceId: 'sumsel',
    category: RecipeCategory.kue,
    difficulty: Difficulty.sulit,
    imageUrl: '',
    description:
        'Kue maksuba adalah kue lapis dari telur, gula, mentega cair, dan susu kental manis yang dipanggang lapis demi lapis. Kue ini menjadi hidangan tradisional untuk acara keluarga dan perayaan.',
    cookTimeMinutes: 120,
    servings: 12,
    tags: ['kue', 'lapis', 'telur', 'panggang', 'perayaan'],
    positiveImpacts: [
      'Telur menyediakan protein.',
      'Menjadi hidangan tradisional untuk acara keluarga dan perayaan.',
      'Dapat menjadi peluang usaha kue.',
    ],
    negativeImpacts: [
      'Kandungan gula dan lemaknya cukup tinggi.',
      'Konsumsi berlebihan dapat meningkatkan asupan kalori harian.',
    ],
    ingredients: [
      Ingredient(name: 'Telur', note: '10–12 butir'),
      Ingredient(name: 'Gula pasir', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Mentega cair', quantity: 200, unit: 'gram'),
      Ingredient(name: 'Susu kental manis', note: 'secukupnya'),
      Ingredient(name: 'Vanili', note: 'secukupnya'),
    ],
    steps: [
      'Pecahkan telur ke dalam wadah.',
      'Tambahkan gula dan vanili.',
      'Kocok perlahan hingga tercampur rata.',
      'Masukkan mentega cair dan susu kental manis.',
      'Tuangkan sedikit adonan ke loyang yang telah diolesi mentega.',
      'Panggang hingga lapisan pertama matang.',
      'Tuangkan lapisan berikutnya dan panggang kembali.',
      'Ulangi hingga adonan habis, lalu dinginkan sebelum dipotong.',
    ],
  ),
];