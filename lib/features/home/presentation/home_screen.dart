import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/app_colors.dart';
import '../../../core/audio/audio_service.dart';
import '../../../l10n/l10n_extensions.dart';
import '../../../core/widgets/cosmic_backdrop.dart';
import '../../../core/widgets/glass_panel.dart';
import '../../../core/widgets/premium_navigation.dart';
import '../../level_selection/presentation/level_selection_screen.dart';
import '../../progress/data/progress_repository.dart';
import '../../progress/presentation/achievements_dialog.dart';
import '../../progress/presentation/daily_reward_dialog.dart';
import '../../settings/presentation/settings_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Ensure BGM is running on home even if splash kick-off was skipped.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final audio = ref.read(audioServiceProvider);
      unawaited(audio.unlock());
      unawaited(audio.startMusic());
    });
  }

  Future<void> _openLevels() async {
    // Keep BGM going; only play the tap SFX (SFX no longer steals audio focus).
    unawaited(ref.read(audioServiceProvider).startMusic());
    await ref.read(audioServiceProvider).play(GameSound.button);
    if (!mounted) return;
    await Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => const LevelSelectionScreen()),
    );
    if (mounted) setState(() {});
  }

  Future<void> _openSettings() async {
    await ref.read(audioServiceProvider).play(GameSound.button);
    if (!mounted) return;
    await Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const SettingsScreen()));
    if (mounted) setState(() {});
  }

  void _showCollection() {
    ref.read(audioServiceProvider).play(GameSound.button);
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        final sheetL10n = context.l10n;
        return Padding(
          padding: const EdgeInsets.all(16),
          child: GlassPanel(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  sheetL10n.premiumThemes,
                  style: const TextStyle(
                    color: Color(0xFFFFC34A),
                    fontWeight: FontWeight.w900,
                    letterSpacing: .8,
                  ),
                ),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/images/premium_tube_showcase.png'),
                ),
                const SizedBox(height: 13),
                Text(
                  sheetL10n.premiumThemesBody,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final progress = ref.read(progressRepositoryProvider);
    final rewards = progress is RewardProgressRepository
        ? progress as RewardProgressRepository
        : null;
    return Scaffold(
      body: CosmicBackdrop(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 470),
                    child: Column(
                      children: [
                        GlassPanel(
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Container(
                                width: 92,
                                height: 92,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: const Color(0xFF8A43E7),
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x665B2EE8),
                                      blurRadius: 22,
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/app_icon.png',
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      l10n.brandName,
                                      style: const TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: -.9,
                                      ),
                                    ),
                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          const LinearGradient(
                                            colors: [
                                              Color(0xFF13BEEA),
                                              Color(0xFF6B75FF),
                                              Color(0xFFE83BD4),
                                            ],
                                          ).createShader(bounds),
                                      child: Text(
                                        l10n.brandPuzzle,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1.1,
                                          height: .95,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 7),
                                    Text(
                                      l10n.homeTagline,
                                      softWrap: true,
                                      style: const TextStyle(
                                        color: AppColors.textMuted,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: AspectRatio(
                            aspectRatio: 2.05,
                            child: Image.asset(
                              'assets/images/premium_tube_showcase.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: _openAchievements,
                          child: GlassPanel(
                            padding: const EdgeInsets.fromLTRB(12, 10, 14, 10),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'assets/images/progress_crown_badge.png',
                                    width: 72,
                                    height: 72,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        l10n.progressAndAchievements,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Color(0xFFFFC34A),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 11,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        l10n.progressTapHint,
                                        softWrap: true,
                                        style: const TextStyle(
                                          color: AppColors.textMuted,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _StatPill(
                                  icon: Icons.star_rounded,
                                  value: '${rewards?.totalStars ?? 0}',
                                  color: const Color(0xFFFFC02E),
                                ),
                                const SizedBox(width: 6),
                                _StatPill(
                                  icon: Icons.monetization_on_rounded,
                                  value: '${rewards?.coins ?? 0}',
                                  color: const Color(0xFFFFA719),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        _PrimaryPlayButton(label: l10n.playCta, onTap: _openLevels),
                        const SizedBox(height: 11),
                        Row(
                          children: [
                            Expanded(
                              child: _FeatureCard(
                                icon: Icons.card_giftcard_rounded,
                                title: l10n.dailyReward,
                                subtitle: rewards?.canClaimDailyReward ?? true
                                    ? l10n.rewardReady
                                    : l10n.comeTomorrow,
                                color: const Color(0xFFFFC34A),
                                onTap: _openDailyReward,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: _FeatureCard(
                                icon: Icons.workspace_premium_rounded,
                                title: l10n.collection,
                                subtitle: l10n.collectionSubtitle,
                                color: AppColors.violet,
                                onTap: _showCollection,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            PremiumBottomBar(
              activeIndex: 0,
              items: [
                PremiumBottomItem(
                  icon: Icons.home_rounded,
                  label: l10n.home,
                  onTap: () {},
                ),
                PremiumBottomItem(
                  icon: Icons.map_rounded,
                  label: l10n.levels,
                  onTap: _openLevels,
                ),
                PremiumBottomItem(
                  icon: Icons.auto_awesome_rounded,
                  label: l10n.collection,
                  onTap: _showCollection,
                ),
                PremiumBottomItem(
                  icon: Icons.settings_rounded,
                  label: l10n.settings,
                  onTap: _openSettings,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openDailyReward() async {
    await ref.read(audioServiceProvider).play(GameSound.button);
    final progress = ref.read(progressRepositoryProvider);
    final rewards = progress is RewardProgressRepository
        ? progress as RewardProgressRepository
        : null;
    if (rewards == null || !mounted) return;
    final claim = await showDailyRewardDialog(
      context: context,
      rewards: rewards,
    );
    if (!mounted) return;
    final l10n = context.l10n;
    setState(() {});
    if (claim != null) {
      final hintSuffix = claim.hintTokens > 0
          ? l10n.freeHintSuffix(claim.hintTokens)
          : '';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.dailyClaimSnack(claim.coins, hintSuffix),
          ),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  Future<void> _openAchievements() async {
    await ref.read(audioServiceProvider).play(GameSound.button);
    final progress = ref.read(progressRepositoryProvider);
    final rewards = progress is RewardProgressRepository
        ? progress as RewardProgressRepository
        : null;
    if (!mounted) return;
    await showAchievementsDialog(
      context: context,
      progress: progress,
      rewards: rewards,
    );
  }
}

class _PrimaryPlayButton extends StatelessWidget {
  const _PrimaryPlayButton({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Material(
    color: Colors.transparent,
    child: InkWell(
      key: const ValueKey('campaign-button'),
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Ink(
        height: 60,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF0A9BD2), Color(0xFF055289)],
          ),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFF5CD9FF)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x660D9ED4),
              blurRadius: 18,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.play_arrow_rounded, size: 32),
            const SizedBox(width: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 17,
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

class _StatPill extends StatelessWidget {
  const _StatPill({
    required this.icon,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 6),
    decoration: BoxDecoration(
      color: color.withValues(alpha: .1),
      borderRadius: BorderRadius.circular(13),
      border: Border.all(color: color.withValues(alpha: .35)),
    ),
    child: Column(
      children: [
        Icon(icon, color: color, size: 16),
        Text(
          value,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
        ),
      ],
    ),
  );
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(18),
    child: GlassPanel(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 12),
      borderRadius: BorderRadius.circular(18),
      child: Row(
        children: [
          Icon(icon, color: color, size: 26),
          const SizedBox(width: 9),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppColors.textMuted,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
