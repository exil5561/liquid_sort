import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/presentation/widgets/level_complete_overlay.dart';
import 'package:liquid_sort/l10n/app_localizations.dart';

void main() {
  testWidgets('level complete overlay shows score and navigation', (
    tester,
  ) async {
    var nextPressed = false;
    await tester.pumpWidget(
      MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Stack(
            children: [
              LevelCompleteOverlay(
                level: 4,
                moves: 10,
                parMoves: 12,
                onNext: () => nextPressed = true,
                onLevels: () {},
              ),
            ],
          ),
        ),
      ),
    );
    // Intro animation starts at opacity 0; advance enough for content to show.
    await tester.pump(const Duration(milliseconds: 600));

    expect(find.text('PERFECT!'), findsOneWidget);
    expect(find.text('Level 4 complete'), findsOneWidget);
    expect(find.text('10 moves  •  Par 12'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('next-level-button')));
    expect(nextPressed, isTrue);
  });
}
