import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../core/widgets/glass_panel.dart';
import '../../../../l10n/l10n_extensions.dart';
import '../../domain/achievement_result.dart';
import '../../domain/level_result.dart';

class LevelCompleteOverlay extends StatefulWidget {
  const LevelCompleteOverlay({
    super.key,
    required this.level,
    required this.moves,
    required this.parMoves,
    required this.onNext,
    required this.onLevels,
    this.result,
    this.onDoubleReward,
  });

  final int level;
  final int moves;
  final int parMoves;
  final LevelResult? result;
  final VoidCallback onNext;
  final VoidCallback onLevels;
  final Future<int?> Function()? onDoubleReward;

  @override
  State<LevelCompleteOverlay> createState() => _LevelCompleteOverlayState();
}

class _LevelCompleteOverlayState extends State<LevelCompleteOverlay>
    with TickerProviderStateMixin {
  late final AnimationController _intro;
  late final AnimationController _coinController;
  late int _coinFrom;
  late int _coinTo;
  bool _doubling = false;

  @override
  void initState() {
    super.initState();
    _intro = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..forward();
    _coinController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );
    _coinFrom = 0;
    _coinTo = _targetCoins;
    Future<void>.delayed(const Duration(milliseconds: 520), () {
      if (mounted) _coinController.forward(from: 0);
    });
  }

  int get _targetCoins => widget.result?.reward.totalCoins ?? 0;

  String _starRewardLabel(AppLocalizations l10n, int stars, double multiplier) {
    final percent = (multiplier * 100).round();
    final tone = switch (stars) {
      3 => l10n.fullReward,
      2 => l10n.halfReward,
      _ => l10n.quarterReward,
    };
    return l10n.starRewardLabel(stars, tone, percent);
  }

  @override
  void didUpdateWidget(covariant LevelCompleteOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldTarget = oldWidget.result?.reward.totalCoins ?? 0;
    if (_targetCoins != oldTarget) {
      _coinFrom = _displayedCoins;
      _coinTo = _targetCoins;
      _coinController.forward(from: 0);
    }
  }

  int get _displayedCoins =>
      (_coinFrom + (_coinTo - _coinFrom) * _coinController.value).round();

  @override
  void dispose() {
    _intro.dispose();
    _coinController.dispose();
    super.dispose();
  }

  Future<void> _doubleReward() async {
    if (_doubling || widget.onDoubleReward == null) return;
    setState(() => _doubling = true);
    final doubledTotal = await widget.onDoubleReward!();
    if (!mounted) return;
    if (doubledTotal != null) {
      _coinFrom = _displayedCoins;
      _coinTo = doubledTotal;
      _coinController.forward(from: 0);
    }
    setState(() => _doubling = false);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final result = widget.result;
    final stars =
        result?.stars ??
        (widget.moves <= widget.parMoves
            ? 3
            : widget.moves <= widget.parMoves + 3
            ? 2
            : 1);
    return Positioned.fill(
      child: ColoredBox(
        color: const Color(0xD105081C),
        child: Stack(
          children: [
            Positioned.fill(
              child: AnimatedBuilder(
                animation: _intro,
                builder: (context, child) => CustomPaint(
                  painter: _CelebrationPainter(progress: _intro.value),
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(22),
                  child: AnimatedBuilder(
                    animation: _intro,
                    builder: (context, child) {
                      final entrance = Curves.easeOutBack.transform(
                        (_intro.value / .36).clamp(0, 1),
                      );
                      return Opacity(
                        opacity: entrance.clamp(0, 1),
                        child: Transform.scale(
                          scale: .82 + entrance * .18,
                          child: child,
                        ),
                      );
                    },
                    child: GlassPanel(
                      padding: const EdgeInsets.fromLTRB(20, 24, 20, 18),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 390),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ShaderMask(
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [Color(0xFFFFE59B), Color(0xFFFFB423)],
                              ).createShader(bounds),
                              child: Text(
                                l10n.perfect,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 29,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1.1,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              l10n.levelCompleted(widget.level),
                              style: const TextStyle(
                                color: AppColors.textMuted,
                              ),
                            ),
                            const SizedBox(height: 13),
                            AnimatedBuilder(
                              animation: _intro,
                              builder: (context, child) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  3,
                                  (index) => _AnimatedStar(
                                    index: index,
                                    earned: index < stars,
                                    progress: _intro.value,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              l10n.movesAndPar(widget.moves, widget.parMoves,
                              ),
                              style: const TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            if (result != null) ...[
                              const SizedBox(height: 15),
                              _ResultGrid(result: result),
                              if (result.achievements.isNotEmpty) ...[
                                const SizedBox(height: 13),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    result.isNewBest
                                        ? l10n.newRecordAchievements
                                        : l10n.achievementsHeader,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Color(0xFFFFD166),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 7),
                                Wrap(
                                  spacing: 6,
                                  runSpacing: 6,
                                  children: [
                                    for (final achievement
                                        in result.achievements)
                                      _AchievementChip(
                                        achievement: achievement,
                                      ),
                                  ],
                                ),
                              ],
                              const SizedBox(height: 15),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0x553A2A08),
                                      Color(0x3328734E),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: const Color(0x88FFD166),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.monetization_on_rounded,
                                          color: Color(0xFFFFD166),
                                          size: 28,
                                        ),
                                        const SizedBox(width: 8),
                                        AnimatedBuilder(
                                          animation: _coinController,
                                          builder: (context, child) => Text(
                                            '+$_displayedCoins',
                                            style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        _starRewardLabel(
                                          l10n,
                                          stars,
                                          result.reward.starMultiplier,
                                        ),
                                        style: const TextStyle(
                                          color: Color(0xFFFFD166),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    if (result.reward.assistancePenalty > 0)
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3),
                                        child: Text(
                                          l10n.assistancePenalty(result.reward.assistancePenalty,
                                          ),
                                          style: const TextStyle(
                                            color: Color(0xFFFF8A9B),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (!result.reward.isDoubled &&
                                  widget.onDoubleReward != null) ...[
                                const SizedBox(height: 9),
                                SizedBox(
                                  width: double.infinity,
                                  height: 45,
                                  child: FilledButton.icon(
                                    onPressed: _doubling ? null : _doubleReward,
                                    style: FilledButton.styleFrom(
                                      backgroundColor: const Color(0xFFC56D08),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    icon: _doubling
                                        ? const SizedBox.square(
                                            dimension: 17,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                            ),
                                          )
                                        : const Icon(
                                            Icons.ondemand_video_rounded,
                                          ),
                                    label: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        l10n.doubleReward,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                            const SizedBox(height: 14),
                            SizedBox(
                              width: double.infinity,
                              height: 52,
                              child: FilledButton.icon(
                                key: const ValueKey('next-level-button'),
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFF0876B7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                ),
                                onPressed: widget.onNext,
                                icon: const Icon(Icons.arrow_forward_rounded),
                                label: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    widget.level == 50
                                        ? l10n.goToLevels
                                        : l10n.continueNext,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: widget.onLevels,
                              child: Text(l10n.backToLevelSelect),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AnimatedStar extends StatelessWidget {
  const _AnimatedStar({
    required this.index,
    required this.earned,
    required this.progress,
  });

  final int index;
  final bool earned;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final begin = .2 + index * .13;
    final reveal = Curves.elasticOut.transform(
      ((progress - begin) / .3).clamp(0, 1),
    );
    return Transform.scale(
      scale: reveal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Icon(
          Icons.star_rounded,
          size: index == 1 ? 55 : 46,
          color: earned ? const Color(0xFFFFC02E) : const Color(0xFF3B456D),
          shadows: earned
              ? const [Shadow(color: Color(0xAAFF9D00), blurRadius: 16)]
              : const [],
        ),
      ),
    );
  }
}

class _ResultGrid extends StatelessWidget {
  const _ResultGrid({required this.result});

  final LevelResult result;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0x66101834),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0x334E64A5)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              _item(l10n.bestLabel, '${result.previousBest ?? '—'}'),
              _item(l10n.flowCombo, 'x${result.highestFlowCombo}'),
            ],
          ),
          const Divider(height: 13, color: Color(0x284E64A5)),
          Row(
            children: [
              _item(l10n.undo, '${result.undoUses}'),
              _item(l10n.hint, '${result.hintUses}'),
              _item(l10n.extraTube, result.extraTubeUsed ? '1' : '0'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _item(String label, String value) => Expanded(
    child: Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(color: AppColors.textMuted, fontSize: 9),
        ),
      ],
    ),
  );
}

class _AchievementChip extends StatelessWidget {
  const _AchievementChip({required this.achievement});

  final AchievementResult achievement;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Tooltip(
      message: achievement.id.description(l10n),
      child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0x33456CE8),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0x555D7EFF)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_iconFor(achievement.id), color: AppColors.cyan, size: 13),
          const SizedBox(width: 4),
          Text(
            achievement.id.title(l10n),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w800),
          ),
        ],
      ),
    ),
  );
  }

  IconData _iconFor(AchievementId id) => switch (id) {
    AchievementId.perfectSort => Icons.auto_awesome_rounded,
    AchievementId.underPar => Icons.speed_rounded,
    AchievementId.noUndo => Icons.undo_rounded,
    AchievementId.noHint => Icons.psychology_alt_rounded,
    AchievementId.flowMaster => Icons.water_drop_rounded,
    AchievementId.newRecord => Icons.emoji_events_rounded,
    AchievementId.firstTry => Icons.looks_one_rounded,
    AchievementId.noExtraTube => Icons.science_outlined,
  };
}

class _CelebrationPainter extends CustomPainter {
  const _CelebrationPainter({required this.progress});

  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    final random = math.Random(18);
    const colors = [
      AppColors.cyan,
      AppColors.violet,
      AppColors.coral,
      Color(0xFFFFD166),
      AppColors.mint,
    ];
    for (var index = 0; index < 52; index++) {
      final x = random.nextDouble() * size.width;
      final baseY = random.nextDouble() * size.height;
      final y =
          (baseY + progress * (35 + random.nextDouble() * 100)) % size.height;
      final rotation = progress * math.pi * (2 + index % 3);
      canvas.save();
      canvas.translate(x, y);
      canvas.rotate(rotation);
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(
            center: Offset.zero,
            width: 2 + random.nextDouble() * 3,
            height: 6 + random.nextDouble() * 5,
          ),
          const Radius.circular(2),
        ),
        Paint()..color = colors[index % colors.length].withValues(alpha: .65),
      );
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant _CelebrationPainter oldDelegate) =>
      progress != oldDelegate.progress;
}
