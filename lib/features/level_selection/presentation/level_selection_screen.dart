import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/app_colors.dart';
import '../../../core/audio/audio_service.dart';
import '../../../core/widgets/cosmic_backdrop.dart';
import '../../../core/widgets/glass_panel.dart';
import '../../../core/widgets/premium_navigation.dart';
import '../../../l10n/l10n_extensions.dart';
import '../../game/data/campaign_levels.dart';
import '../../game/presentation/game_screen.dart';
import '../../progress/data/progress_repository.dart';
import '../../progress/presentation/achievements_dialog.dart';
import '../../settings/presentation/settings_screen.dart';

class LevelSelectionScreen extends ConsumerStatefulWidget {
  const LevelSelectionScreen({super.key});

  @override
  ConsumerState<LevelSelectionScreen> createState() =>
      _LevelSelectionScreenState();
}

class _LevelSelectionScreenState extends ConsumerState<LevelSelectionScreen> {
  Future<void> _openLevel(int level) async {
    ref.read(audioServiceProvider).startMusic();
    ref.read(audioServiceProvider).play(GameSound.button);
    await Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => GameScreen(level: level)));
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final progress = ref.read(progressRepositoryProvider);
    final unlocked = progress.highestUnlockedLevel;
    final completed = progress.completedLevels;
    final totalLevels = CampaignLevels.all.length;
    final rewards = progress is RewardProgressRepository
        ? progress as RewardProgressRepository
        : null;
    return Scaffold(
      body: CosmicBackdrop(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 14, 8),
              child: GlassPanel(
                padding: const EdgeInsets.fromLTRB(10, 9, 12, 11),
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        PremiumCircleButton(
                          icon: Icons.arrow_back_rounded,
                          tooltip: l10n.back,
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        const SizedBox(width: 11),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/progress_crown_badge.png',
                            width: 45,
                            height: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.levelMapTitle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text(
                                l10n.levelsCompletedProgress(completed.length, totalLevels,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: AppColors.textMuted,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        _HeaderReward(
                          icon: Icons.star_rounded,
                          value: '${rewards?.totalStars ?? 0}',
                          color: const Color(0xFFFFC22B),
                        ),
                        const SizedBox(width: 6),
                        _HeaderReward(
                          icon: Icons.monetization_on_rounded,
                          value: '${rewards?.coins ?? 0}',
                          color: const Color(0xFFFF9D16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: LinearProgressIndicator(
                        minHeight: 6,
                        value: completed.length / totalLevels,
                        backgroundColor: const Color(0xFF263148),
                        color: AppColors.cyan,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  height: 66,
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/special_mechanics_showcase.png',
                        fit: BoxFit.cover,
                      ),
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xAA061027), Color(0x22061027)],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            l10n.newExperimentsBanner,
                            softWrap: true,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              shadows: [Shadow(blurRadius: 8)],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(16, 5, 16, 18),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 104,
                  mainAxisSpacing: 13,
                  crossAxisSpacing: 13,
                  childAspectRatio: .95,
                ),
                itemCount: totalLevels,
                itemBuilder: (context, index) {
                  final level = index + 1;
                  final isUnlocked = level <= unlocked;
                  final isCompleted = completed.contains(level);
                  final best = progress.bestMovesFor(level);
                  final definition = CampaignLevels.byNumber(level);
                  return _LevelTile(
                    level: level,
                    isUnlocked: isUnlocked,
                    isCompleted: isCompleted,
                    playLabel: l10n.play,
                    stars: rewards != null
                        ? rewards.starsFor(level)
                        : !isCompleted
                        ? 0
                        : best != null && best <= definition.parMoves
                        ? 3
                        : 2,
                    mechanicIcon: definition.isBoss
                        ? Icons.local_fire_department_rounded
                        : definition.bombTubeId != null
                        ? Icons.timer_rounded
                        : definition.portalTubeA != null
                        ? Icons.sync_alt_rounded
                        : definition.valveTubeId != null
                        ? Icons.arrow_downward_rounded
                        : definition.movingEveryMoves > 0
                        ? Icons.swap_horiz_rounded
                        : definition.hasNarrowTube
                        ? Icons.compress_rounded
                        : definition.mixRecipes.isNotEmpty
                        ? Icons.science_rounded
                        : definition.heatedTubeId != null
                        ? Icons.local_fire_department_rounded
                        : definition.frozenTubeId != null
                        ? Icons.ac_unit_rounded
                        : definition.lockedTubeId != null
                        ? Icons.lock_rounded
                        : definition.hiddenTubeId != null
                        ? Icons.visibility_off_rounded
                        : null,
                    mechanicColor: definition.isBoss
                        ? AppColors.coral
                        : definition.bombTubeId != null
                        ? AppColors.coral
                        : definition.portalTubeA != null
                        ? AppColors.cyan
                        : definition.valveTubeId != null
                        ? const Color(0xFFFFC34A)
                        : definition.hasNarrowTube
                        ? const Color(0xFFFF8A5B)
                        : definition.mixRecipes.isNotEmpty
                        ? AppColors.mint
                        : definition.heatedTubeId != null
                        ? const Color(0xFFFF7A1A)
                        : AppColors.cyan,
                    onTap: isUnlocked ? () => _openLevel(level) : null,
                  );
                },
              ),
            ),
            PremiumBottomBar(
              activeIndex: 1,
              items: [
                PremiumBottomItem(
                  icon: Icons.home_rounded,
                  label: l10n.home,
                  onTap: () => Navigator.of(context).pop(),
                ),
                PremiumBottomItem(
                  icon: Icons.map_rounded,
                  label: l10n.levels,
                  onTap: () {},
                ),
                PremiumBottomItem(
                  icon: Icons.emoji_events_rounded,
                  label: l10n.achievements,
                  onTap: _showAchievements,
                ),
                PremiumBottomItem(
                  icon: Icons.settings_rounded,
                  label: l10n.settings,
                  onTap: () async {
                    await Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const SettingsScreen(),
                      ),
                    );
                    if (mounted) setState(() {});
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showAchievements() async {
    final progress = ref.read(progressRepositoryProvider);
    final rewards = progress is RewardProgressRepository
        ? progress as RewardProgressRepository
        : null;
    await showAchievementsDialog(
      context: context,
      progress: progress,
      rewards: rewards,
    );
  }
}

class _HeaderReward extends StatelessWidget {
  const _HeaderReward({
    required this.icon,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Icon(icon, color: color, size: 18),
      Text(
        value,
        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
      ),
    ],
  );
}

class _LevelTile extends StatelessWidget {
  const _LevelTile({
    required this.level,
    required this.isUnlocked,
    required this.isCompleted,
    required this.playLabel,
    required this.stars,
    required this.mechanicIcon,
    required this.mechanicColor,
    required this.onTap,
  });

  final int level;
  final bool isUnlocked;
  final bool isCompleted;
  final String playLabel;
  final int stars;
  final IconData? mechanicIcon;
  final Color mechanicColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    key: ValueKey('level-$level'),
    onTap: onTap,
    borderRadius: BorderRadius.circular(20),
    child: GlassPanel(
      padding: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(20),
      child: AnimatedOpacity(
        opacity: isUnlocked ? 1 : .45,
        duration: const Duration(milliseconds: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isUnlocked)
              Text(
                '$level',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              )
            else
              const Icon(Icons.lock_rounded, color: AppColors.textMuted),
            const SizedBox(height: 3),
            if (mechanicIcon != null)
              Icon(mechanicIcon, color: mechanicColor, size: 14)
            else
              const SizedBox(height: 14),
            const SizedBox(height: 3),
            if (isCompleted)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Icon(
                    Icons.star_rounded,
                    size: 14,
                    color: index < stars
                        ? const Color(0xFFFFD35C)
                        : const Color(0xFF3C466E),
                  ),
                ),
              )
            else if (isUnlocked)
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  playLabel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppColors.cyan,
                    fontSize: 10,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                  ),
                ),
              ),
          ],
        ),
      ),
    ),
  );
}
