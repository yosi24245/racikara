import '../models/recipe.dart';

/// Resep khas Kepulauan Bangka Belitung (provinceId: 'babel').
/// Catatan: cookTimeMinutes, servings, difficulty, dan deskripsi singkat
/// adalah susunan tambahan, silakan sesuaikan setelah resep diuji.
const List<Recipe> kBabelRecipes = [
  // ---------------------------------------------------------------- 1
  Recipe(
    id: 'babel-001',
    name: 'Lempah Kuning',
    provinceId: 'babel',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '', // isi dengan foto sendiri / berlisensi
    description:
        'Lempah kuning adalah masakan ikan berkuah kuning dengan bumbu kunyit dan lengkuas, diberi nanas dan asam jawa, dan melestarikan kuliner khas Bangka Belitung.',
    cookTimeMinutes: 40,
    servings: 4,
    tags: ['ikan', 'kuah', 'kunyit', 'nanas', 'asam'],
    positiveImpacts: [
      'Ikan mengandung protein.',
      'Bumbu dan nanas menambah cita rasa.',
      'Melestarikan kuliner khas Bangka Belitung.',
    ],
    negativeImpacts: [
      'Penggunaan garam berlebihan dapat meningkatkan asupan natrium.',
      'Ikan yang kurang matang berisiko menyebabkan penyakit bawaan makanan.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan tenggiri atau ikan kakap', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 5, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Cabai merah', quantity: 3, unit: 'buah'),
      Ingredient(name: 'Kunyit', quantity: 2, unit: 'cm'),
      Ingredient(name: 'Lengkuas', quantity: 2, unit: 'cm'),
      Ingredient(name: 'Serai', quantity: 1, unit: 'batang'),
      Ingredient(name: 'Nanas', note: 'secukupnya'),
      Ingredient(name: 'Air', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Asam jawa', note: 'secukupnya'),
    ],
    steps: [
      'Bersihkan ikan dan potong sesuai selera.',
      'Haluskan bawang merah, bawang putih, cabai, dan kunyit.',
      'Tumis bumbu bersama lengkuas dan serai hingga harum.',
      'Tambahkan air, lalu didihkan.',
      'Masukkan nanas dan asam jawa.',
      'Masukkan ikan ke dalam kuah.',
      'Tambahkan garam secukupnya.',
      'Masak hingga ikan matang, lalu sajikan.',
    ],
  ),

  // ---------------------------------------------------------------- 2
  Recipe(
    id: 'babel-002',
    name: 'Mie Bangka',
    provinceId: 'babel',
    category: RecipeCategory.utama,
    difficulty: Difficulty.mudah,
    imageUrl: '',
    description:
        'Mie Bangka adalah hidangan mi telur dengan topping ayam cincang berbumbu kecap asin, sawi hijau, dan daun bawang, disajikan dengan kuah kaldu ayam.',
    cookTimeMinutes: 30,
    servings: 3,
    tags: ['mie', 'ayam', 'kaldu', 'sawi', 'bangka'],
    positiveImpacts: [
      'Ayam menyediakan protein.',
      'Mi menjadi sumber karbohidrat.',
      'Dapat menjadi peluang usaha kuliner.',
    ],
    negativeImpacts: [
      'Bumbu dan kecap asin berlebihan dapat meningkatkan asupan natrium.',
      'Mi dengan topping berlemak dapat mengandung banyak kalori.',
    ],
    ingredients: [
      Ingredient(name: 'Mi telur', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Daging ayam cincang', quantity: 200, unit: 'gram'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Kecap asin', note: 'secukupnya'),
      Ingredient(name: 'Merica', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Sawi hijau'),
      Ingredient(name: 'Daun bawang'),
      Ingredient(name: 'Air kaldu ayam'),
      Ingredient(name: 'Minyak goreng', note: 'sedikit'),
    ],
    steps: [
      'Rebus mi hingga matang, kemudian tiriskan.',
      'Cincang bawang putih.',
      'Tumis bawang putih hingga harum.',
      'Masukkan ayam cincang dan masak sampai matang.',
      'Tambahkan kecap asin, merica, dan sedikit garam.',
      'Rebus sawi hijau hingga matang.',
      'Campurkan mi dengan sedikit minyak dan bumbu sesuai selera.',
      'Sajikan mi dengan ayam, sawi, daun bawang, dan kuah kaldu.',
    ],
  ),

  // ---------------------------------------------------------------- 3
  Recipe(
    id: 'babel-003',
    name: 'Otak-otak Bangka',
    provinceId: 'babel',
    category: RecipeCategory.jajanan,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Otak-otak Bangka adalah olahan ikan tenggiri giling, tapioka, dan santan yang dibungkus daun pisang lalu dipanggang, disajikan dengan sambal atau saus sesuai selera.',
    cookTimeMinutes: 45,
    servings: 6,
    tags: ['ikan', 'otak-otak', 'tenggiri', 'panggang', 'daun pisang'],
    positiveImpacts: [
      'Ikan mengandung protein.',
      'Dapat menjadi sumber pendapatan bagi pedagang.',
      'Memperkenalkan makanan khas daerah.',
    ],
    negativeImpacts: [
      'Santan menambah kandungan lemak.',
      'Ikan yang tidak segar dapat memengaruhi keamanan makanan.',
    ],
    ingredients: [
      Ingredient(name: 'Ikan tenggiri giling', quantity: 500, unit: 'gram'),
      Ingredient(name: 'Tepung tapioka', quantity: 150, unit: 'gram'),
      Ingredient(name: 'Santan', quantity: 100, unit: 'ml'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Merica', note: 'secukupnya'),
      Ingredient(name: 'Daun pisang', note: 'untuk membungkus'),
      Ingredient(name: 'Lidi', note: 'untuk menyematkan ujung daun'),
      Ingredient(name: 'Sambal atau saus', note: 'sesuai selera'),
    ],
    steps: [
      'Haluskan bawang putih.',
      'Campurkan ikan giling dengan bawang putih, garam, dan merica.',
      'Tambahkan santan dan tepung tapioka.',
      'Aduk sampai adonan tercampur rata.',
      'Ambil adonan secukupnya dan bungkus dengan daun pisang.',
      'Sematkan ujung daun menggunakan lidi.',
      'Panggang hingga matang sambil sesekali dibalik.',
      'Sajikan dengan sambal atau saus sesuai selera.',
    ],
  ),

  // ---------------------------------------------------------------- 4
  Recipe(
    id: 'babel-004',
    name: 'Pantiaw',
    provinceId: 'babel',
    category: RecipeCategory.utama,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Pantiaw adalah mi pipih khas Bangka yang disajikan dengan kuah suwiran ikan tenggiri berbumbu bawang dan merica, ditaburi daun bawang.',
    cookTimeMinutes: 40,
    servings: 3,
    tags: ['mie', 'pantiaw', 'ikan', 'kuah', 'bangka'],
    positiveImpacts: [
      'Ikan menyediakan protein.',
      'Mi menjadi sumber energi.',
      'Menjaga keberadaan kuliner tradisional Bangka.',
    ],
    negativeImpacts: [
      'Terlalu banyak garam dapat meningkatkan asupan natrium.',
      'Penyimpanan ikan yang tidak tepat dapat menyebabkan makanan cepat rusak.',
    ],
    ingredients: [
      Ingredient(
        name: 'Pantiaw atau mi pipih khas Bangka',
        quantity: 300,
        unit: 'gram',
      ),
      Ingredient(name: 'Ikan tenggiri', quantity: 200, unit: 'gram'),
      Ingredient(name: 'Bawang merah', quantity: 4, unit: 'siung'),
      Ingredient(name: 'Bawang putih', quantity: 3, unit: 'siung'),
      Ingredient(name: 'Merica', note: 'secukupnya'),
      Ingredient(name: 'Garam', note: 'secukupnya'),
      Ingredient(name: 'Daun seledri'),
      Ingredient(name: 'Daun bawang'),
      Ingredient(name: 'Air', note: 'secukupnya'),
    ],
    steps: [
      'Siapkan pantiaw dan pisahkan agar tidak menggumpal.',
      'Rebus ikan hingga matang.',
      'Pisahkan daging ikan dari tulangnya, lalu suwir.',
      'Haluskan bawang merah, bawang putih, dan merica.',
      'Tumis bumbu hingga harum.',
      'Tambahkan air dan masukkan suwiran ikan.',
      'Bumbui dengan garam secukupnya.',
      'Sajikan pantiaw dengan kuah ikan dan taburan daun bawang.',
    ],
  ),

  // ---------------------------------------------------------------- 5
  Recipe(
    id: 'babel-005',
    name: 'Kue Rintak',
    provinceId: 'babel',
    category: RecipeCategory.kue,
    difficulty: Difficulty.sedang,
    imageUrl: '',
    description:
        'Kue rintak adalah kue panggang dari tepung sagu sangrai, kelapa parut, gula, dan telur, yang menjadi bagian dari warisan kuliner lokal.',
    cookTimeMinutes: 50,
    servings: 10,
    tags: ['kue', 'sagu', 'kelapa', 'panggang', 'tradisional'],
    positiveImpacts: [
      'Tepung sagu merupakan sumber karbohidrat.',
      'Dapat dijadikan usaha rumahan.',
      'Menjadi bagian dari warisan kuliner lokal.',
    ],
    negativeImpacts: [
      'Kandungan gula perlu diperhatikan jika dikonsumsi terlalu banyak.',
      'Makanan ini tidak menyediakan protein dan vitamin dalam jumlah besar jika dimakan tanpa makanan pendamping.',
    ],
    ingredients: [
      Ingredient(name: 'Tepung sagu', quantity: 250, unit: 'gram'),
      Ingredient(name: 'Kelapa parut', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Gula pasir', quantity: 100, unit: 'gram'),
      Ingredient(name: 'Telur', quantity: 1, unit: 'butir'),
      Ingredient(name: 'Garam', note: 'sedikit'),
      Ingredient(name: 'Air', note: 'secukupnya bila diperlukan'),
    ],
    steps: [
      'Sangrai tepung sagu dengan api kecil, lalu dinginkan.',
      'Campurkan kelapa parut, gula, telur, dan garam.',
      'Masukkan tepung sagu sedikit demi sedikit.',
      'Aduk hingga menjadi adonan yang dapat dibentuk.',
      'Bentuk adonan sesuai selera.',
      'Letakkan di atas loyang yang telah disiapkan.',
      'Panggang hingga matang dan bagian bawahnya mengering.',
      'Dinginkan sebelum disajikan.',
    ],
  ),
];