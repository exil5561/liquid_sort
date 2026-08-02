import 'package:flutter/material.dart';

import '../features/home/presentation/splash_screen.dart';
import 'theme/app_theme.dart';

class LiquidSortApp extends StatelessWidget {
  const LiquidSortApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Liquid Sort Puzzle',
    debugShowCheckedModeBanner: false,
    theme: AppTheme.dark,
    home: const SplashScreen(),
  );
}
