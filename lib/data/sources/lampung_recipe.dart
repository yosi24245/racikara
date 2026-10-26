import '../models/recipe.dart';

/// Resep khas Lampung (provinceId: 'lampung').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kLampungRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'lampung-001',
    name: 'Seruit',
    provinceId: 'lampung',
    category: RecipeCategory.utama,
    difficulty: Difficulty.mudah,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Seruit adalah hidangan ikan bakar yang disajikan dengan sambal terasi, tomat, dan tempoyak (opsional), ditemani lalapan. Hidangan ini biasa dinikmati bersama-sama sehingga mempererat kebersamaan saat makan.',
    cookTimeMinutes: 40,
    servings: 4,
    tags: ['ikan bakar', 'sambal', 'terasi', 'tempoyak', 'lalapan'],
    positiveImpacts: [
      'Ikan merupakan sumber protein.',
      'Lalapan dapat menambah asupan serat dan vitamin.',
      'Mempererat kebersamaan saat makan bersama.',
    ],
    negativeImpacts: [
      'Sambal yang terlalu asin dapat meningkatkan asupan natrium.',
      'Ikan yang dibakar hingga gosong sebaiknya dihindari.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan nila atau ikan mas', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Cabai merah', quantity: 5, unit: 'buah'),
      Ingredient(name: 'Bawang merah', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 2, unit: 'siung'),
      Ingredient(name: 'Tomat', quantity: 1, unit: 'buah'),
      Ingredient(name: 'Terasi', note: 'secukupnya'),
      Ingredient(name: 'Tempoyak', note: 'secukupnya, opsional'),
      Ingredient(name: 'Garam'),
      Ingredient(name: 'Jeruk nipis'),
      Ingredient(name: 'Lalapan', note: 'sesuai selera'),
    ],
    steps: [
      'Bersihkan ikan, lalu lumuri dengan garam dan jeruk nipis.',
      'Bakar ikan hingga matang merata.',
      'Haluskan cabai, bawang merah, bawang putih, tomat, dan terasi.',
      'Tambahkan garam secukupnya.',
      'Campurkan sambal dengan tempoyak jika suka.',
      'Letakkan ikan bakar di piring.',
      'Sajikan bersama sambal dan lalapan.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'lampung-002',
    name: 'Gulai Taboh',
    provinceId: 'lampung',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Gulai taboh adalah masakan ikan berkuah santan dengan kacang panjang dan labu siam, berbumbu kunyit, jahe, dan serai. Hidangan ini melestarikan masakan khas Lampung.',
    cookTimeMinutes: 45,
    servings: 4,
    tags: ['ikan', 'gulai', 'santan', 'sayur', 'lampung'],
    positiveImpacts: [
      'Ikan mengandung protein.',
      'Sayuran menyediakan serat dan vitamin.',
      'Melestarikan masakan khas Lampung.',
    ],
    negativeImpacts: [
      'Santan mengandung lemak jenuh.',
      'Garam berlebihan dapat meningkatkan asupan natrium.',
    ],
    ingredients: [
      Ingredient(
        name: 'Ikan laut atau ikan air tawar',
        quantity: 500,
        unit: 'gram',
      ),
      Ingredient(name: 'Santan', quantity: 400, unit: 'ml'),
      Ingredient(name: 'Kacang panjang', note: 'secukupnya'),
      Ingredient(name: 'Labu siam', note: 'secukupnya'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Kunyit'),
      Ingredient(name: 'Jahe'),
      Ingredient(name: 'Cabai'),
      Ingredient(name: 'Serai', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan dan potong sesuai selera.',
      'Haluskan bawang merah, bawang putih, kunyit, jahe, dan cabai.',
      'Tumis bumbu hingga harum.',
      'Tambahkan santan dan serai.',
      'Aduk perlahan hingga kuah mulai mendidih.',
      'Masukkan sayuran dan ikan.',
      'Masak hingga ikan dan sayuran matang.',
      'Tambahkan garam secukupnya, lalu sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'lampung-003',
    name: 'Pindang Lampung',
    provinceId: 'lampung',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Pindang Lampung adalah masakan ikan patin atau baung berkuah bumbu rempah dengan tomat atau nanas, dimasak hingga ikan matang sempurna dan disajikan hangat.',
    cookTimeMinutes: 40,
    servings: 4,
    tags: ['ikan', 'patin', 'baung', 'pindang', 'kuah'],
    positiveImpacts: [
      'Ikan menjadi sumber protein.',
      'Kuah dan sayuran dapat menambah variasi zat gizi.',
      'Mendukung usaha kuliner tradisional.',
    ],
    negativeImpacts: [
      'Penggunaan garam yang berlebihan kurang baik bagi kesehatan.',
      'Ikan yang tidak matang sempurna berisiko menyebabkan penyakit bawaan makanan.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan patin atau ikan baung', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai merah', note: 'secukupnya'),
      Ingredient(name: 'Kunyit'),
      Ingredient(name: 'Jahe'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Tomat atau nanas'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan dan potong menjadi beberapa bagian.',
      'Haluskan bawang merah, bawang putih, cabai, dan kunyit.',
      'Tumis bumbu bersama serai dan jahe hingga harum.',
      'Tambahkan air dan didihkan.',
      'Masukkan ikan, kemudian masak dengan api sedang.',
      'Tambahkan tomat atau nanas.',
      'Bumbui dengan garam secukupnya.',
      'Masak sampai ikan matang sempurna dan sajikan hangat.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'lampung-004',
    name: 'Tempoyak',
    provinceId: 'lampung',
    category: RecipeCategory.sambal,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Tempoyak adalah olahan daging durian matang yang difermentasi dengan garam, dapat dipakai sebagai bumbu masakan atau dimasak menjadi sambal tempoyak. Waktu memasak di sini hanya untuk membuat sambal setelah fermentasi selesai.',
    cookTimeMinutes: 20,
    servings: 6,
    tags: ['durian', 'fermentasi', 'sambal', 'tempoyak', 'bumbu'],
    positiveImpacts: [
      'Memanfaatkan buah durian sebagai bahan pangan.',
      'Memiliki cita rasa khas hasil fermentasi.',
      'Dapat menjadi produk usaha lokal.',
    ],
    negativeImpacts: [
      'Durian mengandung gula alami dan energi yang perlu diperhitungkan dalam pola makan.',
      'Fermentasi yang tidak terkontrol dapat menyebabkan makanan tidak aman dikonsumsi.',
    ],
    ingredients: [
      Ingredient(name: 'Daging durian matang'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Cabai', note: 'sesuai selera, untuk sambal tempoyak'),
      Ingredient(name: 'Bawang merah', note: 'jika diperlukan'),
      Ingredient(name: 'Bawang putih', note: 'jika diperlukan'),
    ],
    steps: [
      'Pisahkan daging durian dari bijinya.',
      'Masukkan daging durian ke wadah bersih.',
      'Tambahkan sedikit garam dan aduk rata.',
      'Simpan dalam wadah tertutup untuk proses fermentasi menggunakan cara yang aman dan teruji.',
      'Setelah fermentasi selesai, tempoyak dapat digunakan sebagai bumbu masakan.',
      'Untuk membuat sambal tempoyak, haluskan cabai, bawang merah, dan bawang putih.',
      'Tumis bumbu, lalu masukkan tempoyak.',
      'Masak hingga bumbu tercampur rata dan matang.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'lampung-005',
    name: 'Engkak Ketan',
    provinceId: 'lampung',
    category: RecipeCategory.kue,
    difficulty: Difficulty.sulit,
    imageUrl: '',
    description:
        'Engkak ketan adalah kue lapis panggang dari tepung ketan, santan, telur, dan mentega cair, menjadi sajian tradisional untuk acara keluarga.',
    cookTimeMinutes: 120,
    servings: 12,
    tags: ['kue', 'ketan', 'lapis', 'panggang', 'santan'],
    positiveImpacts: [
      'Tepung ketan menyediakan karbohidrat sebagai sumber energi.',
      'Menjadi sajian tradisional untuk acara keluarga.',
      'Dapat dijual sebagai usaha kue rumahan.',
    ],
    negativeImpacts: [
      'Kandungan gula dan lemak cukup tinggi.',
      'Konsumsi berlebihan dapat membuat asupan energi harian berlebihan.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung ketan', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 500, unit: 'ml'),
      Ingredient(name: 'Telur', quantity: 4, unit: 'butir'),
      Ingredient(name: 'Gula pasir', quantity: 200, unit: 'gram'),
      Ingredient(name: 'Mentega cair', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Garam', note: 'sedikit'),
      Ingredient(name: 'Vanili', note: 'sedikit'),
    ],
    steps: [
      'Campurkan telur dan gula, lalu kocok hingga rata.',
      'Masukkan tepung ketan sedikit demi sedikit.',
      'Tambahkan santan, mentega cair, garam, dan vanili.',
      'Aduk hingga adonan halus.',
      'Tuangkan sedikit adonan ke loyang yang telah diolesi mentega.',
      'Panggang hingga lapisan pertama matang.',
      'Tambahkan adonan berikutnya dan panggang kembali.',
      'Ulangi sampai adonan habis, lalu dinginkan sebelum dipotong.',
    ],
  ),
];