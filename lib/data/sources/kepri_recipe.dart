import '../models/recipe.dart';

/// Resep khas Kepulauan Riau (provinceId: 'kepri').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kKepriRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'kepri-001',
    name: 'Mi Tarempa',
    provinceId: 'kepri',
    category: RecipeCategory.utama,
    difficulty: Difficulty.mudah,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Mi Tarempa adalah hidangan mi kuning yang ditumis dengan suwiran ikan tongkol, telur, tauge, dan kecap, dikenal sebagai kuliner khas Kepulauan Riau.',
    cookTimeMinutes: 30,
    servings: 3,
    tags: ['mie', 'ikan tongkol', 'tumis', 'telur', 'tauge'],
    positiveImpacts: [
      'Mi menyediakan energi, sedangkan ikan mengandung protein.',
      'Melestarikan kuliner khas Kepulauan Riau.',
      'Mendukung usaha kuliner dan pariwisata daerah.',
    ],
    negativeImpacts: [
      'Kecap dan garam berlebihan meningkatkan asupan natrium.',
      'Penggunaan minyak terlalu banyak menambah kandungan lemak.',
    ],
    ingredients: [
      Ingredient(name: 'Mi kuning', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Ikan tongkol', quantity: 150, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 2, unit: 'siung'),
      Ingredient(name: 'Cabai merah', quantity: 3, unit: 'buah'),
      Ingredient(name: 'Telur', quantity: 1, unit: 'butir'),
      Ingredient(name: 'Tauge', note: 'secukupnya'),
      Ingredient(name: 'Kecap', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Minyak goreng', note: 'secukupnya'),
    ],
    steps: [
      'Rebus atau siapkan mi sesuai petunjuk kemasan, kemudian tiriskan.',
      'Rebus ikan tongkol hingga matang, lalu suwir-suwir.',
      'Haluskan bawang merah, bawang putih, dan cabai.',
      'Tumis bumbu hingga harum, kemudian masukkan telur.',
      'Tambahkan ikan tongkol dan mi.',
      'Masukkan tauge, kecap, dan sedikit garam.',
      'Aduk hingga matang dan sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'kepri-002',
    name: 'Gonggong Rebus',
    provinceId: 'kepri',
    category: RecipeCategory.utama,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Gonggong rebus adalah hidangan siput gonggong yang direbus dengan serai dan daun salam, disajikan bersama sambal cabai jeruk nipis. Gonggong merupakan hasil laut khas Kepulauan Riau.',
    cookTimeMinutes: 30,
    servings: 3,
    tags: ['seafood', 'gonggong', 'siput', 'rebus', 'sambal'],
    positiveImpacts: [
      'Gonggong mengandung protein dan mineral.',
      'Memperkenalkan hasil laut khas Kepulauan Riau.',
      'Mendukung pendapatan nelayan dan pedagang seafood.',
    ],
    negativeImpacts: [
      'Gonggong yang tidak matang atau berasal dari perairan tercemar dapat berisiko bagi kesehatan.',
      'Sambal yang terlalu asin dapat meningkatkan asupan natrium.',
    ],
    ingredients: [
      Ingredient(name: 'Siput gonggong segar', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Daun salam', quantity: 2, unit: 'lembar'),
      Ingredient(name: 'Air', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      // Sambal
      Ingredient(
        name: 'Cabai merah',
        quantity: 5,
        unit: 'buah',
        note: 'sambal',
      ),
      Ingredient(
        name: 'Bawang merah',
        quantity: 3,
        unit: 'siung',
        note: 'sambal',
      ),
      Ingredient(
        name: 'Bawang putih',
        quantity: 1,
        unit: 'siung',
        note: 'sambal',
      ),
      Ingredient(name: 'Jeruk nipis', note: 'sambal'),
      Ingredient(name: 'Garam', note: 'sambal, sedikit'),
      Ingredient(name: 'Gula', note: 'sambal, sedikit'),
    ],
    steps: [
      'Cuci gonggong beberapa kali hingga bersih.',
      'Didihkan air bersama serai dan daun salam.',
      'Masukkan gonggong dan rebus hingga matang.',
      'Tiriskan gonggong dan sajikan.',
      'Untuk sambal, haluskan cabai, bawang merah, dan bawang putih.',
      'Tambahkan perasan jeruk nipis serta sedikit garam dan gula.',
      'Sajikan gonggong dengan sambal.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'kepri-003',
    name: 'Lakse',
    provinceId: 'kepri',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Lakse adalah hidangan mi dari tepung beras dan tapioka yang disajikan dengan kuah ikan berbumbu kunyit dan serai, dengan tambahan santan jika diinginkan. Hidangan ini menjaga tradisi kuliner Melayu di Kepulauan Riau.',
    cookTimeMinutes: 60,
    servings: 3,
    tags: ['mie', 'lakse', 'melayu', 'kuah ikan', 'tepung beras'],
    positiveImpacts: [
      'Tepung beras menjadi sumber energi.',
      'Ikan menyediakan protein.',
      'Menjaga tradisi kuliner Melayu di Kepulauan Riau.',
    ],
    negativeImpacts: [
      'Lakse yang hanya dimakan dengan mi dapat kurang mengandung protein dan serat.',
      'Santan dan garam berlebihan dapat meningkatkan asupan lemak jenuh dan natrium.',
    ],
    ingredients: [
      // Mi lakse
      Ingredient(
        name: 'Tepung beras',
        quantity: 250,
        unit: 'gram',
        note: 'mi',
      ),
      Ingredient(
        name: 'Tepung tapioka',
        quantity: 50,
        unit: 'gram',
        note: 'mi',
      ),
      Ingredient(name: 'Air panas', note: 'mi, secukupnya'),
      Ingredient(name: 'Garam', note: 'mi, sejumput'),
      // Kuah ikan
      Ingredient(
        name: 'Ikan',
        quantity: 250,
        unit: 'gram',
        note: 'kuah',
      ),
      Ingredient(
        name: 'Bawang merah',
        quantity: 4,
        unit: 'siung',
        note: 'kuah',
      ),
      Ingredient(
        name: 'Bawang putih',
        quantity: 2,
        unit: 'siung',
        note: 'kuah',
      ),
      Ingredient(
        name: 'Kunyit',
        quantity: 1,
        unit: 'ruas',
        note: 'kuah',
      ),
      Ingredient(
        name: 'Serai',
        quantity: 1,
        unit: 'batang',
        note: 'kuah',
      ),
      Ingredient(name: 'Santan', note: 'kuah, secukupnya jika diinginkan'),
      Ingredient(name: 'Air', note: 'kuah, secukupnya'),
      Ingredient(name: 'Garam', note: 'kuah, secukupnya'),
    ],
    steps: [
      'Campurkan tepung beras, tepung tapioka, dan garam.',
      'Tuangkan air panas sedikit demi sedikit sambil diaduk hingga menjadi adonan.',
      'Bentuk adonan menjadi mi atau gulungan kecil.',
      'Rebus hingga matang, kemudian tiriskan.',
      'Untuk kuah, haluskan bawang merah, bawang putih, dan kunyit.',
      'Tumis bumbu bersama serai, lalu tambahkan air.',
      'Masukkan ikan dan masak hingga matang. Tambahkan santan bila digunakan.',
      'Sajikan lakse dengan kuah ikan.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'kepri-004',
    name: 'Otak-Otak Ikan',
    provinceId: 'kepri',
    category: RecipeCategory.jajanan,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Otak-otak ikan adalah olahan ikan giling berbumbu bawang, tapioka, dan santan yang dibungkus daun pisang, lalu dipanggang hingga matang.',
    cookTimeMinutes: 45,
    servings: 4,
    tags: ['ikan', 'otak-otak', 'panggang', 'daun pisang', 'tapioka'],
    positiveImpacts: [
      'Ikan menyediakan protein.',
      'Daun pisang dapat digunakan sebagai pembungkus alami.',
      'Berpotensi menjadi produk usaha rumahan.',
    ],
    negativeImpacts: [
      'Garam berlebihan dapat meningkatkan asupan natrium.',
      'Ikan yang tidak matang sempurna berisiko menyebabkan gangguan pencernaan.',
    ],
    ingredients: [
      Ingredient(name: 'Daging ikan giling', quantity: 300, unit: 'gram'),
      Ingredient(name: 'Tepung tapioka', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 100, unit: 'ml'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Merica', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Daun pisang', note: 'untuk membungkus'),
    ],
    steps: [
      'Haluskan bawang merah dan bawang putih.',
      'Campurkan ikan giling dengan bumbu, tepung tapioka, dan santan.',
      'Aduk hingga semua bahan tercampur rata.',
      'Letakkan adonan di atas daun pisang.',
      'Bungkus dan sematkan ujung daun.',
      'Panggang di atas api sedang hingga matang, sambil membaliknya secara berkala.',
      'Sajikan setelah matang merata.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'kepri-005',
    name: 'Kue Deram-Deram',
    provinceId: 'kepri',
    category: RecipeCategory.jajanan,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Kue deram-deram adalah jajanan tradisional Melayu dari tepung beras dan gula merah yang dibentuk bulat pipih berlubang di tengah, lalu digoreng.',
    cookTimeMinutes: 40,
    servings: 8,
    tags: ['kue', 'jajanan', 'goreng', 'tepung beras', 'gula merah', 'melayu'],
    positiveImpacts: [
      'Tepung beras menyediakan energi.',
      'Menggunakan bahan yang relatif mudah ditemukan.',
      'Membantu melestarikan jajanan tradisional Melayu.',
    ],
    negativeImpacts: [
      'Gula merah tetap mengandung gula sehingga perlu dikonsumsi secukupnya.',
      'Proses menggoreng menambah kandungan lemak.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung beras', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Gula merah', quantity: 150, unit: 'gram'),
      Ingredient(name: 'Air', quantity: 100, unit: 'ml'),
      Ingredient(name: 'Garam', note: 'sejumput'),
      Ingredient(name: 'Minyak goreng', note: 'untuk menggoreng'),
    ],
    steps: [
      'Iris gula merah menjadi potongan kecil.',
      'Rebus gula merah bersama air hingga larut, lalu saring dan dinginkan sampai hangat.',
      'Campurkan tepung beras dan sedikit garam.',
      'Tuangkan larutan gula sedikit demi sedikit sambil diaduk hingga terbentuk adonan.',
      'Diamkan adonan sebentar agar menyatu.',
      'Bentuk adonan menjadi bulatan pipih dengan lubang di tengah.',
      'Goreng dengan minyak panas sedang hingga matang.',
      'Tiriskan sebelum disajikan.',
    ],
  ),
];