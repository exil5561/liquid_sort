import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/app/theme/app_theme.dart';
import 'package:liquid_sort/features/game/presentation/game_screen.dart';
import 'package:liquid_sort/features/home/presentation/home_screen.dart';
import 'package:liquid_sort/features/level_selection/presentation/level_selection_screen.dart';
import 'package:liquid_sort/features/progress/data/progress_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('render phone previews', (tester) async {
    await ui.loadFontFromList(
      File(
        r'C:\src\flutter\bin\cache\artifacts\material_fonts\roboto-regular.ttf',
      ).readAsBytesSync(),
      fontFamily: 'Roboto',
    );
    // ignore: invalid_use_of_visible_for_testing_member
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final repository = SharedPreferencesProgressRepository(preferences);
    final previewKey = GlobalKey();
    await tester.binding.setSurfaceSize(const Size(390, 844));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await _pumpScreen(tester, previewKey, repository, const HomeScreen());
    await _capture(previewKey, 'home');

    await _pumpScreen(
      tester,
      previewKey,
      repository,
      const LevelSelectionScreen(),
    );
    await _capture(previewKey, 'levels');

    await _pumpScreen(
      tester,
      previewKey,
      repository,
      const GameScreen(level: 1),
    );
    await _capture(previewKey, 'game');
  });
}

Future<void> _pumpScreen(
  WidgetTester tester,
  GlobalKey previewKey,
  ProgressRepository repository,
  Widget screen,
) async {
  await tester.pumpWidget(
    RepaintBoundary(
      key: previewKey,
      child: ProviderScope(
        overrides: [progressRepositoryProvider.overrideWithValue(repository)],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.dark,
          home: screen,
        ),
      ),
    ),
  );
  await tester.pump();
  await tester.runAsync(
    () => Future<void>.delayed(const Duration(milliseconds: 250)),
  );
  await tester.pump();
}

Future<void> _capture(GlobalKey key, String name) async {
  final boundary =
      key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
  final image = await boundary.toImage();
  final data = await image.toByteData(format: ui.ImageByteFormat.png);
  final directory = Directory('test_artifacts/previews')
    ..createSync(recursive: true);
  File(
    '${directory.path}/$name.png',
  ).writeAsBytesSync(data!.buffer.asUint8List());
}
