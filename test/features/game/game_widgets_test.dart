import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/presentation/widgets/level_complete_overlay.dart';

void main() {
  testWidgets('level complete overlay shows score and navigation', (
    tester,
  ) async {
    var nextPressed = false;
    await tester.pumpWidget(
      MaterialApp(
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

    expect(find.text('HARİKA!'), findsOneWidget);
    expect(find.text('10 hamle  •  Par 12'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('next-level-button')));
    expect(nextPressed, isTrue);
  });
}
