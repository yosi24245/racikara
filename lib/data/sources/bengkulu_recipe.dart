import '../models/recipe.dart';

/// Resep khas Bengkulu (provinceId: 'bengkulu').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kBengkuluRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'bengkulu-001',
    name: 'Pendap',
    provinceId: 'bengkulu',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Pendap adalah makanan khas Bengkulu berupa ikan laut berbumbu kelapa parut yang dibungkus daun talas dan daun pisang, lalu direbus atau dikukus hingga matang sempurna.',
    cookTimeMinutes: 180,
    servings: 4,
    tags: ['ikan', 'daun talas', 'kelapa', 'kukus', 'tradisional'],
    positiveImpacts: [
      'Ikan mengandung protein.',
      'Bumbu dan kelapa menambah cita rasa.',
      'Melestarikan makanan khas Bengkulu.',
    ],
    negativeImpacts: [
      'Santan atau kelapa dalam jumlah banyak dapat meningkatkan asupan lemak.',
      'Pengolahan yang kurang matang dapat menyebabkan gangguan kesehatan.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan laut', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Daun talas', note: 'untuk membungkus'),
      Ingredient(name: 'Kelapa parut', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai merah', note: 'secukupnya'),
      Ingredient(name: 'Kunyit'),
      Ingredient(name: 'Jahe'),
      Ingredient(name: 'Garam'),
      Ingredient(name: 'Daun pisang', note: 'untuk membungkus'),
      Ingredient(name: 'Tali', note: 'untuk mengikat bungkusan'),
    ],
    steps: [
      'Bersihkan ikan dan siapkan daun talas.',
      'Haluskan bawang merah, bawang putih, cabai, kunyit, jahe, dan garam.',
      'Campurkan bumbu halus dengan kelapa parut.',
      'Balurkan campuran bumbu pada ikan.',
      'Bungkus ikan dengan daun talas, lalu lapisi dengan daun pisang.',
      'Ikat bungkusan agar tidak terbuka.',
      'Rebus atau kukus selama beberapa jam hingga ikan dan daun talas matang sempurna.',
      'Sajikan pendap bersama nasi hangat.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'bengkulu-002',
    name: 'Bagar Hiu',
    provinceId: 'bengkulu',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Bagar hiu dikenal sebagai makanan khas Bengkulu, berupa ikan yang dimasak dengan bumbu rempah dan sedikit air hingga bumbu meresap. Jika menggunakan ikan hiu, pilih sumber yang legal dan berkelanjutan; ikan lain dapat digunakan sebagai alternatif.',
    cookTimeMinutes: 50,
    servings: 4,
    tags: ['ikan', 'hiu', 'rempah', 'bengkulu', 'bumbu'],
    positiveImpacts: [
      'Ikan merupakan sumber protein.',
      'Memperkenalkan tradisi kuliner Bengkulu.',
      'Dapat mendukung usaha kuliner lokal.',
    ],
    negativeImpacts: [
      'Bumbu yang terlalu asin dapat meningkatkan asupan natrium.',
      'Penangkapan hiu yang tidak berkelanjutan dapat mengganggu keseimbangan ekosistem laut.',
    ],
    ingredients: [
      Ingredient(
        name: 'Daging ikan',
        quantity: 500,
        unit: 'gram',
        note: 'yang digunakan dalam resep bagar',
      ),
      Ingredient(name: 'Bawang merah', quantity: 6, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Cabai merah', note: 'secukupnya'),
      Ingredient(name: 'Jahe'),
      Ingredient(name: 'Kunyit'),
      Ingredient(name: 'Lengkuas'),
      Ingredient(name: 'Ketumbar'),
      Ingredient(name: 'Serai'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan dan potong menjadi beberapa bagian.',
      'Haluskan bawang merah, bawang putih, cabai, jahe, kunyit, dan ketumbar.',
      'Tumis bumbu bersama serai dan lengkuas hingga harum.',
      'Masukkan potongan ikan dan aduk perlahan.',
      'Tambahkan sedikit air.',
      'Masak dengan api kecil hingga ikan matang dan bumbu meresap.',
      'Tambahkan garam secukupnya.',
      'Sajikan dengan nasi hangat.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'bengkulu-003',
    name: 'Lema',
    provinceId: 'bengkulu',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sulit,
    imageUrl: '',
    description:
        'Lema adalah olahan rebung dan ikan yang difermentasi secara tradisional, lalu dimasak bersama bumbu sesuai selera. Hidangan ini melestarikan tradisi pengolahan makanan masyarakat Rejang. Waktu memasak di sini belum termasuk lama fermentasi.',
    cookTimeMinutes: 60,
    servings: 4,
    tags: ['rebung', 'ikan', 'fermentasi', 'rejang', 'tradisional'],
    positiveImpacts: [
      'Memanfaatkan bahan pangan lokal.',
      'Melestarikan tradisi pengolahan makanan masyarakat Rejang.',
      'Fermentasi dapat membentuk cita rasa khas.',
    ],
    negativeImpacts: [
      'Fermentasi yang tidak terkontrol dapat menyebabkan pertumbuhan mikroorganisme berbahaya.',
      'Aroma yang kuat mungkin kurang disukai sebagian orang.',
    ],
    ingredients: [
      Ingredient(
        name: 'Rebung',
        note: 'yang telah disiapkan secara higienis',
      ),
      Ingredient(name: 'Ikan air tawar atau ikan kecil'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Cabai', note: 'sesuai selera'),
      Ingredient(name: 'Bumbu', note: 'sesuai selera, untuk memasak lema'),
    ],
    steps: [
      'Bersihkan rebung dan iris tipis.',
      'Siapkan ikan yang sudah dibersihkan.',
      'Campurkan rebung, ikan, dan garam secukupnya.',
      'Masukkan campuran ke wadah fermentasi yang bersih.',
      'Tutup wadah dan lakukan fermentasi menggunakan cara tradisional yang teruji dan aman.',
      'Setelah fermentasi selesai, masak lema bersama bumbu sesuai selera.',
      'Pastikan masakan matang sempurna.',
      'Sajikan bersama nasi.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'bengkulu-004',
    name: 'Gulai Pisang',
    provinceId: 'bengkulu',
    category: RecipeCategory.utama,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Gulai pisang adalah masakan pisang muda berkuah santan dengan bumbu kunyit dan jahe, memanfaatkan bahan pangan yang mudah ditemukan.',
    cookTimeMinutes: 40,
    servings: 4,
    tags: ['pisang muda', 'gulai', 'santan', 'sayur', 'tradisional'],
    positiveImpacts: [
      'Pisang mengandung karbohidrat dan serat.',
      'Memanfaatkan bahan pangan yang mudah ditemukan.',
      'Menambah variasi makanan tradisional.',
    ],
    negativeImpacts: [
      'Santan dapat meningkatkan kandungan lemak jenuh.',
      'Penggunaan garam berlebihan kurang baik bagi kesehatan.',
    ],
    ingredients: [
      Ingredient(name: 'Pisang muda', quantity: 5, unit: 'buah'),
      Ingredient(name: 'Santan', quantity: 400, unit: 'ml'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 2, unit: 'siung'),
      Ingredient(name: 'Kunyit'),
      Ingredient(name: 'Jahe'),
      Ingredient(name: 'Daun salam atau serai'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
    ],
    steps: [
      'Kupas pisang muda dan potong sesuai selera.',
      'Haluskan bawang merah, bawang putih, kunyit, dan jahe.',
      'Tumis bumbu hingga harum.',
      'Masukkan santan dan serai.',
      'Aduk perlahan agar santan tidak pecah.',
      'Masukkan potongan pisang.',
      'Masak hingga pisang empuk dan bumbu meresap.',
      'Tambahkan garam secukupnya, lalu sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'bengkulu-005',
    name: 'Kue Tat',
    provinceId: 'bengkulu',
    category: RecipeCategory.kue,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Kue tat adalah kue panggang berbahan tepung terigu, mentega, dan telur dengan selai nanas di atasnya, menjadi hidangan khas untuk acara keluarga dan perayaan di Bengkulu.',
    cookTimeMinutes: 60,
    servings: 12,
    tags: ['kue', 'selai nanas', 'panggang', 'perayaan', 'bengkulu'],
    positiveImpacts: [
      'Menjadi hidangan khas untuk acara keluarga dan perayaan.',
      'Dapat dikembangkan sebagai usaha rumahan.',
      'Memperkenalkan warisan kuliner Bengkulu.',
    ],
    negativeImpacts: [
      'Gula dan mentega dapat meningkatkan asupan gula serta lemak.',
      'Konsumsi berlebihan dapat membuat pola makan kurang seimbang.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung terigu', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Mentega atau margarin', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Telur', quantity: 1, unit: 'butir'),
      Ingredient(name: 'Gula', quantity: 75, unit: 'gram'),
      Ingredient(name: 'Selai nanas', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'sedikit'),
    ],
    steps: [
      'Campurkan mentega dan gula hingga rata.',
      'Tambahkan telur, lalu aduk kembali.',
      'Masukkan tepung terigu dan garam sedikit demi sedikit.',
      'Aduk hingga menjadi adonan yang bisa dibentuk.',
      'Pipihkan adonan dan letakkan di loyang.',
      'Tambahkan selai nanas di atasnya.',
      'Panggang pada suhu sekitar 160–180°C hingga matang.',
      'Dinginkan sebelum dipotong dan disajikan.',
    ],
  ),
];