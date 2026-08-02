import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ads/ad_service.dart';
import '../../../core/services/premium_feedback_service.dart';
import '../../progress/data/progress_repository.dart';
import '../domain/achievement_result.dart';
import '../domain/flow_combo_state.dart';
import '../domain/level_result.dart';
import '../domain/reward_calculator.dart';
import '../domain/star_rating_service.dart';

final rewardControllerProvider =
    NotifierProvider<RewardController, LevelResult?>(RewardController.new);

class RewardController extends Notifier<LevelResult?> {
  static const _starRating = StarRatingService();
  static const _rewardCalculator = RewardCalculator();

  @override
  LevelResult? build() => null;

  void reset() => state = null;

  Future<LevelResult> completeLevel({
    required int level,
    required int moves,
    required int parMoves,
    required int? previousBest,
    required int undoUses,
    required int hintUses,
    required bool extraTubeUsed,
    required bool firstTry,
    required FlowComboState flow,
  }) async {
    final stars = _starRating.calculate(
      moves: moves,
      parMoves: parMoves,
      undoUses: undoUses,
      hintUses: hintUses,
      extraTubeUsed: extraTubeUsed,
    );
    final achievements = _achievements(
      moves: moves,
      parMoves: parMoves,
      previousBest: previousBest,
      undoUses: undoUses,
      hintUses: hintUses,
      extraTubeUsed: extraTubeUsed,
      firstTry: firstTry,
      highestFlow: flow.highestComboThisLevel,
    );
    final reward = _rewardCalculator.calculate(
      level: level,
      stars: stars,
      flow: flow,
      achievements: achievements,
      hintUses: hintUses,
    );
    final result = LevelResult(
      level: level,
      movesUsed: moves,
      parMoves: parMoves,
      previousBest: previousBest,
      highestFlowCombo: flow.highestComboThisLevel,
      undoUses: undoUses,
      hintUses: hintUses,
      extraTubeUsed: extraTubeUsed,
      stars: stars,
      reward: reward,
      achievements: achievements,
    );
    state = result;

    final repository = ref.read(progressRepositoryProvider);
    await repository.saveLevelCompleted(level, moves);
    final rewardRepository = repository is RewardProgressRepository
        ? repository as RewardProgressRepository
        : null;
    if (rewardRepository != null) {
      await rewardRepository.saveLevelRewards(
        level: level,
        stars: stars,
        coinsEarned: reward.totalCoins,
        highestCombo: flow.highestComboThisLevel,
        achievements: achievements.map((item) => item.id.name).toList(),
      );
    }
    unawaited(ref.read(premiumFeedbackServiceProvider).levelVictory());
    return result;
  }

  Future<int?> doubleReward() async {
    final current = state;
    if (current == null || current.reward.isDoubled) return null;
    final completed = await ref.read(adServiceProvider).showRewarded();
    if (!completed) return null;
    final repository = ref.read(progressRepositoryProvider);
    final rewardRepository = repository is RewardProgressRepository
        ? repository as RewardProgressRepository
        : null;
    if (rewardRepository != null) {
      await rewardRepository.grantCoins(current.reward.subtotal);
    }
    state = current.copyWith(reward: current.reward.copyWith(isDoubled: true));
    return state!.reward.totalCoins;
  }

  List<AchievementResult> _achievements({
    required int moves,
    required int parMoves,
    required int? previousBest,
    required int undoUses,
    required int hintUses,
    required bool extraTubeUsed,
    required bool firstTry,
    required int highestFlow,
  }) {
    final results = <AchievementResult>[];
    if (moves <= parMoves && undoUses == 0 && hintUses == 0) {
      results.add(
        const AchievementResult(
          id: AchievementId.perfectSort,
          title: 'Kusursuz Sıralama',
          description: 'Par içinde, yardım almadan tamamlandı',
        ),
      );
    } else if (moves <= parMoves) {
      results.add(
        const AchievementResult(
          id: AchievementId.underPar,
          title: 'Par Altı',
          description: 'Hedef hamle sayısı aşılmadı',
        ),
      );
    }
    if (undoUses == 0) {
      results.add(
        const AchievementResult(
          id: AchievementId.noUndo,
          title: 'Geri Almasız',
          description: 'Hiç geri alma kullanılmadı',
        ),
      );
    }
    if (hintUses == 0) {
      results.add(
        const AchievementResult(
          id: AchievementId.noHint,
          title: 'İpucusuz',
          description: 'Çözüm tamamen sana ait',
        ),
      );
    }
    if (highestFlow >= 5) {
      results.add(
        const AchievementResult(
          id: AchievementId.flowMaster,
          title: 'Flow Ustası',
          description: 'Flow x5 seviyesine ulaşıldı',
        ),
      );
    }
    if (previousBest == null || moves < previousBest) {
      results.add(
        const AchievementResult(
          id: AchievementId.newRecord,
          title: 'Yeni Rekor',
          description: 'Yeni en iyi hamle sayısı',
        ),
      );
    }
    if (firstTry) {
      results.add(
        const AchievementResult(
          id: AchievementId.firstTry,
          title: 'İlk Deneme',
          description: 'Bölüm yeniden başlamadan bitti',
        ),
      );
    }
    if (!extraTubeUsed) {
      results.add(
        const AchievementResult(
          id: AchievementId.noExtraTube,
          title: 'Ekstra Tüpsüz',
          description: 'Ekstra tüpe ihtiyaç olmadı',
        ),
      );
    }
    return results.take(4).toList(growable: false);
  }
}
