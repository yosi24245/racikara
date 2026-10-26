import '../models/recipe.dart';

/// Resep khas Sumatera Barat (provinceId: 'sumbar').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kSumbarRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'sumbar-001',
    name: 'Rendang',
    provinceId: 'sumbar',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Rendang adalah masakan daging sapi bersantan dengan bumbu rempah yang dimasak perlahan hingga kuah menyusut, dan menjadi identitas kuliner masyarakat Minangkabau. Tingkat kekeringan bumbu dapat disesuaikan dengan jenis rendang yang diinginkan.',
    cookTimeMinutes: 180,
    servings: 6,
    tags: ['daging sapi', 'santan', 'rempah', 'minangkabau', 'tradisional'],
    positiveImpacts: [
      'Daging mengandung protein dan zat besi.',
      'Menjadi identitas kuliner masyarakat Minangkabau.',
      'Dapat meningkatkan pendapatan pedagang makanan.',
    ],
    negativeImpacts: [
      'Daging berlemak dan santan dapat meningkatkan asupan lemak jenuh.',
      'Konsumsi berlebihan dapat membuat asupan energi dan garam terlalu tinggi.',
    ],
    ingredients: [
      Ingredient(name: 'Daging sapi', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 500, unit: 'ml'),
      Ingredient(name: 'Bawang merah', quantity: 8, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Cabai merah', quantity: 10, unit: 'buah'),
      Ingredient(name: 'Lengkuas', quantity: 2, unit: 'ruas'),
      Ingredient(name: 'Jahe', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Kunyit', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai', quantity: 2, unit: 'batang'),
      Ingredient(name: 'Daun kunyit'),
      Ingredient(name: 'Daun jeruk'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
    ],
    steps: [
      'Potong daging sapi sesuai ukuran yang diinginkan.',
      'Haluskan bawang merah, bawang putih, cabai, jahe, kunyit, dan lengkuas.',
      'Masukkan daging, santan, bumbu halus, serai, dan daun-daunan ke dalam panci.',
      'Masak dengan api sedang sambil diaduk perlahan.',
      'Setelah kuah menyusut, kecilkan api.',
      'Lanjutkan memasak hingga daging empuk dan bumbu mengering sesuai jenis rendang yang diinginkan.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'sumbar-002',
    name: 'Sate Padang',
    provinceId: 'sumbar',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Sate Padang adalah sate daging sapi yang dipanggang sebentar dan disajikan dengan kuah kental berbumbu rempah yang dikentalkan dengan tepung beras.',
    cookTimeMinutes: 90,
    servings: 4,
    tags: ['sate', 'daging sapi', 'kuah kental', 'rempah', 'padang'],
    positiveImpacts: [
      'Daging sapi merupakan sumber protein dan zat besi.',
      'Melestarikan kuliner khas Padang.',
      'Mendukung usaha kuliner daerah.',
    ],
    negativeImpacts: [
      'Kuah yang terlalu asin dapat meningkatkan asupan natrium.',
      'Daging berlemak dan tambahan minyak dapat meningkatkan asupan lemak.',
    ],
    ingredients: [
      Ingredient(name: 'Daging sapi', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Tepung beras', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai merah', note: 'sesuai selera'),
      Ingredient(name: 'Jahe', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Kunyit', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Ketumbar', note: 'secukupnya'),
      Ingredient(name: 'Jintan', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
      Ingredient(name: 'Tusuk sate', note: 'secukupnya'),
    ],
    steps: [
      'Rebus daging sapi hingga empuk, kemudian potong kecil-kecil.',
      'Haluskan bawang, cabai, jahe, kunyit, dan rempah-rempah.',
      'Tumis bumbu hingga harum.',
      'Masukkan sebagian air rebusan daging dan masak hingga bumbu tercampur.',
      'Larutkan tepung beras dengan sedikit air, lalu tuangkan perlahan sambil diaduk hingga kuah mengental.',
      'Tusuk daging dan panggang sebentar.',
      'Sajikan sate dengan kuah kental.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'sumbar-003',
    name: 'Dendeng Balado',
    provinceId: 'sumbar',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Dendeng balado adalah olahan khas Minangkabau berupa irisan daging sapi tipis yang digoreng kering lalu disajikan dengan sambal cabai merah.',
    cookTimeMinutes: 60,
    servings: 4,
    tags: ['dendeng', 'daging sapi', 'balado', 'pedas', 'minangkabau'],
    positiveImpacts: [
      'Daging menyediakan protein, zat besi, dan vitamin B12.',
      'Dendeng merupakan salah satu olahan khas Minangkabau.',
      'Dapat disimpan lebih lama jika diolah dan disimpan dengan benar.',
    ],
    negativeImpacts: [
      'Penggorengan menambah kandungan lemak.',
      'Konsumsi berlebihan dapat meningkatkan asupan garam.',
    ],
    ingredients: [
      Ingredient(name: 'Daging sapi', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Cabai merah', quantity: 8, unit: 'buah'),
      Ingredient(name: 'Bawang merah', quantity: 6, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 2, unit: 'siung'),
      Ingredient(name: 'Jeruk nipis', quantity: 1, unit: 'buah'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
      Ingredient(name: 'Minyak goreng', note: 'untuk menggoreng'),
    ],
    steps: [
      'Iris daging tipis-tipis.',
      'Rebus daging dengan sedikit garam sampai cukup empuk.',
      'Tiriskan, lalu pipihkan setiap irisan.',
      'Goreng daging sampai kering sesuai selera.',
      'Haluskan cabai dan bawang merah, kemudian tumis hingga matang.',
      'Tambahkan sedikit garam dan perasan jeruk nipis.',
      'Campurkan daging dengan sambal sebelum disajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'sumbar-004',
    name: 'Soto Padang',
    provinceId: 'sumbar',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Soto Padang adalah soto berkuah kaldu daging berbumbu rempah, disajikan dengan bihun, irisan daging, daun bawang, dan seledri.',
    cookTimeMinutes: 75,
    servings: 3,
    tags: ['soto', 'kuah', 'daging sapi', 'bihun', 'rempah'],
    positiveImpacts: [
      'Daging mengandung protein dan zat besi.',
      'Kuah membantu menambah asupan cairan.',
      'Memperkenalkan makanan khas Sumatera Barat.',
    ],
    negativeImpacts: [
      'Kuah yang terlalu asin meningkatkan asupan natrium.',
      'Daging goreng dapat menambah asupan lemak.',
    ],
    ingredients: [
      Ingredient(name: 'Daging sapi', quantity: 300, unit: 'gram'),
      Ingredient(name: 'Bihun', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Jahe', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Kayu manis', note: 'secukupnya'),
      Ingredient(name: 'Kapulaga', note: 'secukupnya'),
      Ingredient(name: 'Daun bawang'),
      Ingredient(name: 'Seledri'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Rebus daging sampai empuk dan simpan air kaldunya.',
      'Iris daging tipis-tipis, lalu goreng sebentar jika ingin membuat daging garing.',
      'Haluskan bawang dan jahe.',
      'Tumis bumbu bersama serai dan rempah-rempah.',
      'Masukkan bumbu ke dalam kaldu dan didihkan perlahan.',
      'Siapkan bihun yang telah direndam atau direbus.',
      'Sajikan bihun dengan kuah, daging, daun bawang, dan seledri.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'sumbar-005',
    name: 'Sala Lauak',
    provinceId: 'sumbar',
    originPlace: 'Pariaman',
    category: RecipeCategory.jajanan,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Sala lauak adalah jajanan tradisional Pariaman berupa bola-bola adonan tepung beras dan ikan yang digoreng hingga keemasan.',
    cookTimeMinutes: 40,
    servings: 6,
    tags: ['jajanan', 'goreng', 'ikan', 'tepung beras', 'pariaman'],
    positiveImpacts: [
      'Tepung beras menyediakan energi.',
      'Ikan mengandung protein.',
      'Menjadi salah satu jajanan tradisional Pariaman.',
    ],
    negativeImpacts: [
      'Makanan yang digoreng dapat menyerap minyak.',
      'Ikan asin dapat mengandung banyak garam, sehingga sebaiknya digunakan secukupnya.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung beras', quantity: 250, unit: 'gram'),
      Ingredient(
        name: 'Ikan asin atau ikan teri',
        quantity: 100,
        unit: 'gram',
        note: 'yang telah diolah',
      ),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Kunyit', quantity: 1, unit: 'ruas'),
      Ingredient(name: 'Daun kunyit', note: 'secukupnya'),
      Ingredient(name: 'Air panas', note: 'secukupnya'),
      Ingredient(name: 'Minyak goreng', note: 'untuk menggoreng'),
    ],
    steps: [
      'Haluskan bawang merah, bawang putih, dan kunyit.',
      'Campurkan tepung beras dengan bumbu dan irisan daun kunyit.',
      'Tambahkan ikan yang telah dibersihkan dan dihaluskan atau dicincang.',
      'Tuangkan air panas sedikit demi sedikit sambil diaduk hingga menjadi adonan yang dapat dibentuk.',
      'Bentuk adonan menjadi bola-bola kecil.',
      'Goreng dalam minyak panas hingga matang dan berwarna keemasan.',
      'Tiriskan sebelum disajikan.',
    ],
  ),
];