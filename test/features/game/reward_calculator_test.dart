import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/domain/achievement_result.dart';
import 'package:liquid_sort/features/game/domain/flow_combo_state.dart';
import 'package:liquid_sort/features/game/domain/game_economy.dart';
import 'package:liquid_sort/features/game/domain/reward_calculator.dart';
import 'package:liquid_sort/features/settings/domain/game_difficulty.dart';

void main() {
  const calculator = RewardCalculator();
  const flow = FlowComboState(
    currentMultiplier: 5,
    comboEnergy: 400,
    consecutiveUsefulMoves: 8,
    highestComboThisLevel: 5,
    earnedCoinBonus: 28,
    scoreBonus: 0,
    freeUndoChargesEarned: 0,
  );
  const achievements = [
    AchievementResult(id: AchievementId.noHint),
    AchievementResult(id: AchievementId.noUndo),
  ];

  test('L1 star payouts are 20 / 10 / 5', () {
    final full = calculator.calculate(
      level: 1,
      stars: 3,
      flow: flow,
      achievements: achievements,
    );
    final half = calculator.calculate(
      level: 1,
      stars: 2,
      flow: flow,
      achievements: achievements,
    );
    final quarter = calculator.calculate(
      level: 1,
      stars: 1,
      flow: flow,
      achievements: achievements,
    );

    expect(full.baseCoins, 20);
    expect(full.subtotal, 20);
    expect(half.subtotal, 10);
    expect(quarter.subtotal, 5);
    expect(full.starMultiplier, 1);
    expect(half.starMultiplier, 0.5);
    expect(quarter.starMultiplier, 0.25);
  });

  test('later levels pay less than early levels', () {
    final early = calculator.calculate(
      level: 1,
      stars: 3,
      flow: flow,
      achievements: achievements,
    );
    final mid = calculator.calculate(
      level: 25,
      stars: 3,
      flow: flow,
      achievements: achievements,
    );
    final late = calculator.calculate(
      level: 50,
      stars: 3,
      flow: flow,
      achievements: achievements,
    );

    expect(early.baseCoins, 20);
    expect(early.baseCoins > mid.baseCoins, isTrue);
    expect(mid.baseCoins > late.baseCoins, isTrue);
    expect(early.subtotal > mid.subtotal, isTrue);
    expect(mid.subtotal > late.subtotal, isTrue);
  });

  test('easy mode pays quarter coins; normal/hard unchanged', () {
    final normal = calculator.calculate(
      level: 1,
      stars: 3,
      flow: flow,
      achievements: achievements,
      difficulty: GameDifficulty.normal,
    );
    final hard = calculator.calculate(
      level: 1,
      stars: 3,
      flow: flow,
      achievements: achievements,
      difficulty: GameDifficulty.hard,
    );
    final easy = calculator.calculate(
      level: 1,
      stars: 3,
      flow: flow,
      achievements: achievements,
      difficulty: GameDifficulty.easy,
    );

    expect(normal.subtotal, 20);
    expect(hard.subtotal, 20);
    expect(easy.subtotal, 5);
    expect(
      easy.baseCoins,
      (20 * GameEconomy.easyModeRewardScale).round(),
    );
  });

  test('interstitial cadence by difficulty', () {
    expect(
      GameEconomy.shouldShowExitInterstitial(level: 3, easyMode: true),
      isTrue,
    );
    expect(
      GameEconomy.shouldShowExitInterstitial(level: 6, easyMode: true),
      isTrue,
    );
    expect(
      GameEconomy.shouldShowExitInterstitial(level: 5, easyMode: false),
      isTrue,
    );
    expect(
      GameEconomy.shouldShowExitInterstitial(level: 3, easyMode: false),
      isFalse,
    );
    expect(
      GameEconomy.shouldShowNextLevelInterstitial(level: 5, easyMode: true),
      isTrue,
    );
    expect(
      GameEconomy.shouldShowNextLevelInterstitial(level: 5, easyMode: false),
      isFalse,
    );
  });
}
