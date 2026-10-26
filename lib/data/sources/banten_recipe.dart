import '../models/recipe.dart';

/// Resep khas Banten (provinceId: 'banten').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kBantenRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'banten-001',
    name: 'Sate Bandeng',
    provinceId: 'banten',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sulit,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Sate bandeng adalah olahan ikan bandeng yang dagingnya dikeluarkan dengan hati-hati, dibumbui rempah dan santan, dimasukkan kembali ke kulit ikan, lalu dipanggang. Hidangan ini memperkenalkan kuliner khas Banten.',
    cookTimeMinutes: 90,
    servings: 4,
    tags: ['ikan', 'bandeng', 'panggang', 'santan', 'banten'],
    positiveImpacts: [
      'Ikan mengandung protein.',
      'Memperkenalkan kuliner khas Banten.',
      'Dapat menjadi peluang usaha masyarakat.',
    ],
    negativeImpacts: [
      'Santan menambah kandungan lemak.',
      'Duri yang tertinggal dapat membahayakan saat dimakan.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan bandeng', quantity: 1, unit: 'ekor'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Santan', quantity: 100, unit: 'ml'),
      Ingredient(name: 'Ketumbar', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Gula', note: 'secukupnya'),
      Ingredient(name: 'Minyak goreng', note: 'sedikit, untuk menumis'),
      Ingredient(name: 'Bambu atau alat pemanggang', note: 'untuk menjepit ikan'),
    ],
    steps: [
      'Bersihkan ikan bandeng dan keluarkan duri serta dagingnya dengan hati-hati.',
      'Haluskan bawang merah, bawang putih, ketumbar, garam, dan gula.',
      'Tumis bumbu hingga harum.',
      'Campurkan daging ikan dengan bumbu dan santan.',
      'Masukkan kembali adonan ke dalam kulit ikan.',
      'Jepit ikan menggunakan bambu atau alat pemanggang yang sesuai.',
      'Panggang sambil dibalik hingga matang merata.',
      'Sajikan sate bandeng selagi hangat.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'banten-002',
    name: 'Rabeg',
    provinceId: 'banten',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Rabeg adalah masakan daging sapi berbumbu rempah, kayu manis, cengkih, dan kecap manis yang dimasak dengan api kecil hingga empuk, menjadi bagian dari tradisi kuliner Banten.',
    cookTimeMinutes: 120,
    servings: 4,
    tags: ['daging sapi', 'rempah', 'kecap', 'kayu manis', 'cengkih'],
    positiveImpacts: [
      'Daging sapi mengandung protein dan zat besi.',
      'Menjadi bagian dari tradisi kuliner Banten.',
      'Dapat mendukung usaha rumah makan.',
    ],
    negativeImpacts: [
      'Daging merah sebaiknya dikonsumsi dalam jumlah wajar.',
      'Kecap dan garam berlebihan dapat meningkatkan asupan gula dan natrium.',
    ],
    ingredients: [
      Ingredient(name: 'Daging sapi', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Jahe', note: 'secukupnya'),
      Ingredient(name: 'Merica'),
      Ingredient(name: 'Ketumbar'),
      Ingredient(name: 'Kayu manis', note: 'secukupnya'),
      Ingredient(name: 'Cengkih', note: 'secukupnya'),
      Ingredient(name: 'Kecap manis'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Potong daging sapi menjadi ukuran kecil.',
      'Haluskan bawang merah, bawang putih, jahe, merica, dan ketumbar.',
      'Tumis bumbu hingga harum.',
      'Masukkan potongan daging dan aduk hingga berubah warna.',
      'Tambahkan air, kayu manis, dan cengkih.',
      'Masak dengan api kecil hingga daging empuk.',
      'Tambahkan kecap dan garam secukupnya.',
      'Masak hingga bumbu meresap, kemudian sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'banten-003',
    name: 'Angeun Lada',
    provinceId: 'banten',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Angeun lada adalah masakan tradisional Banten berupa daging sapi atau jeroan berkuah bumbu rempah dengan kencur, kunyit, cabai, dan daun walang.',
    cookTimeMinutes: 90,
    servings: 4,
    tags: ['daging sapi', 'jeroan', 'kencur', 'daun walang', 'pedas'],
    positiveImpacts: [
      'Daging mengandung protein.',
      'Rempah-rempah memberikan aroma dan cita rasa khas.',
      'Melestarikan makanan tradisional Banten.',
    ],
    negativeImpacts: [
      'Jeroan mengandung kolesterol dan beberapa jenisnya tinggi purin.',
      'Masakan yang terlalu pedas dapat menimbulkan ketidaknyamanan pencernaan pada sebagian orang.',
    ],
    ingredients: [
      Ingredient(
        name: 'Daging sapi atau jeroan',
        quantity: 500,
        unit: 'gram',
        note: 'yang telah dibersihkan',
      ),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai merah', note: 'secukupnya'),
      Ingredient(name: 'Kencur'),
      Ingredient(name: 'Kunyit'),
      Ingredient(name: 'Daun walang', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan daging atau jeroan dan potong-potong.',
      'Haluskan bawang merah, bawang putih, cabai, kencur, dan kunyit.',
      'Tumis bumbu hingga harum.',
      'Rebus daging hingga mulai empuk.',
      'Masukkan bumbu tumis ke dalam rebusan.',
      'Tambahkan daun walang dan garam secukupnya.',
      'Masak hingga daging benar-benar matang dan bumbu meresap.',
      'Sajikan hangat bersama nasi.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'banten-004',
    name: 'Ketan Bintul',
    provinceId: 'banten',
    originPlace: 'Serang',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Ketan bintul adalah ketan kukus yang ditekan hingga padat, disajikan dengan taburan daging berbumbu atau serundeng. Hidangan ini menjaga tradisi kuliner masyarakat Serang.',
    cookTimeMinutes: 120,
    servings: 6,
    tags: ['ketan', 'serundeng', 'daging sapi', 'kelapa', 'serang'],
    positiveImpacts: [
      'Ketan menjadi sumber karbohidrat.',
      'Daging dapat menambah protein.',
      'Menjaga tradisi kuliner masyarakat Serang.',
    ],
    negativeImpacts: [
      'Ketan dapat membuat asupan energi tinggi jika porsinya berlebihan.',
      'Taburan daging yang terlalu asin dapat meningkatkan asupan natrium.',
    ],
    ingredients: [
      Ingredient(name: 'Beras ketan', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Kelapa parut', quantity: 200, unit: 'gram'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Santan atau air garam', note: 'sedikit, untuk mengukus ulang'),
      Ingredient(name: 'Daging sapi', note: 'untuk taburan, sesuai selera'),
      Ingredient(name: 'Bawang merah'),
      Ingredient(name: 'Bawang putih'),
      Ingredient(name: 'Ketumbar'),
      Ingredient(name: 'Gula', note: 'secukupnya'),
    ],
    steps: [
      'Cuci beras ketan hingga bersih.',
      'Rendam ketan selama beberapa jam, lalu tiriskan.',
      'Kukus ketan hingga setengah matang.',
      'Tambahkan sedikit santan atau air garam, lalu kukus kembali hingga matang.',
      'Haluskan bumbu untuk daging.',
      'Masak daging dengan bumbu hingga empuk dan berbumbu.',
      'Tumbuk atau tekan ketan hingga padat.',
      'Sajikan ketan dengan taburan daging atau serundeng.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'banten-005',
    name: 'Kue Jojorong',
    provinceId: 'banten',
    category: RecipeCategory.kue,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Kue jojorong adalah jajanan tradisional Banten dari tepung beras, tapioka, dan santan beraroma pandan dengan gula merah di dasar wadah daun pisang, lalu dikukus.',
    cookTimeMinutes: 45,
    servings: 8,
    tags: ['kue', 'jajanan', 'kukus', 'santan', 'gula merah', 'pandan'],
    positiveImpacts: [
      'Menggunakan bahan pangan lokal.',
      'Menjadi bagian dari tradisi jajanan Banten.',
      'Dapat dijadikan usaha makanan rumahan.',
    ],
    negativeImpacts: [
      'Gula merah dan santan menambah asupan gula serta lemak.',
      'Kue mudah rusak jika disimpan terlalu lama pada suhu ruang.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung beras', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Tepung tapioka', quantity: 25, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 500, unit: 'ml'),
      Ingredient(name: 'Air pandan', note: 'secukupnya'),
      Ingredient(name: 'Gula merah', note: 'yang telah disisir'),
      Ingredient(name: 'Garam', note: 'sedikit'),
      Ingredient(name: 'Daun pisang', note: 'untuk wadah'),
    ],
    steps: [
      'Siapkan daun pisang dan bentuk menjadi wadah kecil.',
      'Campurkan tepung beras, tepung tapioka, santan, air pandan, dan garam.',
      'Aduk hingga adonan halus dan tidak menggumpal.',
      'Masukkan gula merah ke dasar setiap wadah.',
      'Tuangkan adonan ke dalam wadah daun pisang.',
      'Susun wadah dalam kukusan.',
      'Kukus hingga adonan matang dan mengental.',
      'Dinginkan sebentar sebelum disajikan.',
    ],
  ),
];