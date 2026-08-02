import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../core/widgets/glass_panel.dart';
import '../../../l10n/l10n_extensions.dart';
import '../../game/domain/achievement_result.dart';
import '../data/progress_repository.dart';
import '../domain/achievement_catalog.dart';

Future<void> showAchievementsDialog({
  required BuildContext context,
  required ProgressRepository progress,
  RewardProgressRepository? rewards,
}) {
  final l10n = context.l10n;
  return showGeneralDialog<void>(
    context: context,
    barrierDismissible: true,
    barrierLabel: l10n.achievements,
    barrierColor: const Color(0xCC040814),
    transitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return FadeTransition(
        opacity: animation,
        child: AchievementsDialog(progress: progress, rewards: rewards),
      );
    },
  );
}

class AchievementsDialog extends StatelessWidget {
  const AchievementsDialog({
    super.key,
    required this.progress,
    this.rewards,
  });

  final ProgressRepository progress;
  final RewardProgressRepository? rewards;

  String _greeting(AppLocalizations l10n) {
    final completed = progress.completedLevels.length;
    final stars = rewards?.totalStars ?? 0;
    final flow = rewards?.highestFlowCombo ?? 1;
    if (completed == 0) {
      return l10n.achGreetingEmpty;
    }
    if (flow >= 5) {
      return l10n.achGreetingFlow;
    }
    if (stars >= 30) {
      return l10n.achGreetingStars;
    }
    if (completed >= 20) {
      return l10n.achGreetingVeteran;
    }
    if (completed >= 5) {
      return l10n.achGreetingProgress;
    }
    return l10n.achGreetingStarter;
  }

  IconData _iconFor(String key) => switch (key) {
    'perfect' => Icons.auto_awesome_rounded,
    'par' => Icons.flag_rounded,
    'undo' => Icons.undo_rounded,
    'hint' => Icons.lightbulb_rounded,
    'flow' => Icons.bolt_rounded,
    'record' => Icons.emoji_events_rounded,
    'first' => Icons.looks_one_rounded,
    'tube' => Icons.science_rounded,
    _ => Icons.star_rounded,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final completed = progress.completedLevels.length;
    final stars = rewards?.totalStars ?? 0;
    final coins = rewards?.coins ?? 0;
    final flow = rewards?.highestFlowCombo ?? 1;
    final unlockedCount = AchievementCatalog.all
        .where((item) => (rewards?.achievementCount(item.id.name) ?? 0) > 0)
        .length;

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460, maxHeight: 640),
            child: Material(
              color: Colors.transparent,
              child: GlassPanel(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          l10n.achievementsTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Color(0xFFFFC34A),
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            letterSpacing: .4,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(Icons.close_rounded),
                        ),
                      ],
                    ),
                    Text(
                      _greeting(l10n),
                      softWrap: true,
                      style: const TextStyle(
                        color: AppColors.text,
                        fontWeight: FontWeight.w700,
                        fontSize: 13.5,
                        height: 1.35,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _StatChip(
                          label: l10n.statLevel,
                          value: '$completed',
                          color: AppColors.cyan,
                        ),
                        _StatChip(
                          label: l10n.statStars,
                          value: '$stars',
                          color: const Color(0xFFFFC22B),
                        ),
                        _StatChip(
                          label: l10n.statCoins,
                          value: '$coins',
                          color: const Color(0xFFFF9D16),
                        ),
                        _StatChip(
                          label: l10n.statFlow,
                          value: 'x$flow',
                          color: AppColors.violet,
                        ),
                        _StatChip(
                          label: l10n.statUnlocked,
                          value: '$unlockedCount/${AchievementCatalog.all.length}',
                          color: AppColors.mint,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: ListView.separated(
                        itemCount: AchievementCatalog.all.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final info = AchievementCatalog.all[index];
                          final count =
                              rewards?.achievementCount(info.id.name) ?? 0;
                          final unlocked = count > 0;
                          return Container(
                            padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                            decoration: BoxDecoration(
                              color: unlocked
                                  ? info.id == AchievementId.perfectSort
                                        ? const Color(0x332A1A00)
                                        : const Color(0x22152638)
                                  : const Color(0x18101828),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: unlocked
                                    ? const Color(0x88FFC34A)
                                    : const Color(0x334D5C8B),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: unlocked
                                        ? const Color(0x33FFC34A)
                                        : const Color(0x22182436),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    unlocked
                                        ? _iconFor(info.icon)
                                        : Icons.lock_rounded,
                                    color: unlocked
                                        ? const Color(0xFFFFC34A)
                                        : AppColors.textMuted,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        info.id.title(l10n),
                                        softWrap: true,
                                        style: TextStyle(
                                          color: unlocked
                                              ? AppColors.text
                                              : AppColors.textMuted,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        info.id.description(l10n),
                                        softWrap: true,
                                        style: const TextStyle(
                                          color: AppColors.textMuted,
                                          fontSize: 11,
                                          height: 1.3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  unlocked ? 'x$count' : l10n.achievementLocked,
                                  style: TextStyle(
                                    color: unlocked
                                        ? AppColors.mint
                                        : AppColors.textMuted,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
    decoration: BoxDecoration(
      color: color.withValues(alpha: .12),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: color.withValues(alpha: .45)),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 10,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          value,
          style: const TextStyle(
            color: AppColors.text,
            fontSize: 12,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    ),
  );
}
