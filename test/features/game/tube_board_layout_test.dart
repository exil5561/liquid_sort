import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/data/campaign_levels.dart';
import 'package:liquid_sort/features/game/domain/game_state.dart';
import 'package:liquid_sort/features/game/presentation/widgets/tube_board.dart';
import 'package:liquid_sort/l10n/app_localizations.dart';

void main() {
  testWidgets('initial liquid tubes render above empty tube slots', (
    tester,
  ) async {
    final pour = AnimationController(vsync: tester);
    final shake = AnimationController(vsync: tester);
    final celebration = AnimationController(vsync: tester);
    addTearDown(pour.dispose);
    addTearDown(shake.dispose);
    addTearDown(celebration.dispose);

    await tester.pumpWidget(
      MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: SizedBox(
            width: 390,
            height: 640,
            child: TubeBoard(
              gameState: GameState.fromLevel(CampaignLevels.byNumber(1)),
              animation: pour,
              shakeAnimation: shake,
              celebrationAnimation: celebration,
              celebratingTubeId: null,
              frozenTubeIds: const {},
              lockedTubeId: null,
              hiddenTubeId: null,
              pendingPour: null,
              onTubeTap: (_) {},
            ),
          ),
        ),
      ),
    );

    final filledTop = tester.getTopLeft(find.byKey(const ValueKey('tube-t1')));
    final emptyTop = tester.getTopLeft(find.byKey(const ValueKey('tube-t3')));
    expect(filledTop.dy, lessThan(emptyTop.dy));
  });
}
