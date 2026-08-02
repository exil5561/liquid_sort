import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'features/progress/data/progress_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        progressRepositoryProvider.overrideWithValue(
          SharedPreferencesProgressRepository(preferences),
        ),
      ],
      child: const LiquidSortApp(),
    ),
  );
}
