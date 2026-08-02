import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'core/ads/ad_service.dart';
import 'core/l10n/locale_controller.dart';
import 'features/progress/data/progress_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(preferences),
      progressRepositoryProvider.overrideWithValue(
        SharedPreferencesProgressRepository(preferences),
      ),
    ],
  );
  await container.read(adServiceProvider).initialize();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const LiquidSortApp(),
    ),
  );
}
