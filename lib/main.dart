import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:racikara/features/map/home_screen.dart';
import 'package:racikara/features/recipes/recipe_detail_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: ResepNusantaraApp()));
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/recipe/:id',
      builder: (context, state) =>
          RecipeDetailScreen(recipeId: state.pathParameters['id']!),
    ),
  ],
);

class ResepNusantaraApp extends StatelessWidget {
  const ResepNusantaraApp({super.key});

  static const Color _seed = Color(0xFFD84315); // merah-oranye hangat

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Resep Nusantara',
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: _seed),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _seed,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}