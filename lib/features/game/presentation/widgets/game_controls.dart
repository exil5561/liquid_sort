import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../l10n/l10n_extensions.dart';
import '../../domain/game_economy.dart';

class GameControls extends StatelessWidget {
  const GameControls({
    super.key,
    required this.canUndo,
    required this.canAddTube,
    required this.enabled,
    required this.onUndo,
    required this.onRestart,
    required this.onHint,
    required this.onAddTube,
    this.undoCostCoins,
    this.hintCostCoins,
    this.undoFree = false,
    this.hintFree = false,
    this.hintEnabled = true,
    this.addTubeCount,
  });

  final bool canUndo;
  final bool canAddTube;
  final bool enabled;
  final bool hintEnabled;
  final bool undoFree;
  final bool hintFree;
  final int? undoCostCoins;
  final int? hintCostCoins;
  final VoidCallback onUndo;
  final VoidCallback onRestart;
  final VoidCallback onHint;
  final VoidCallback onAddTube;
  final int? addTubeCount;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      children: [
        _ControlButton(
          key: const ValueKey('undo-button'),
          icon: Icons.undo_rounded,
          label: l10n.undo,
          costBadge: undoFree
              ? _CostBadge.free(l10n.free)
              : _CostBadge.coins(
                  undoCostCoins ?? GameEconomy.undoCoinCost,
                ),
          onTap: enabled && canUndo ? onUndo : null,
        ),
        _ControlButton(
          icon: Icons.restart_alt_rounded,
          label: l10n.restart,
          costBadge: _CostBadge.coins(GameEconomy.failurePenaltyCoins),
          onTap: enabled ? onRestart : null,
        ),
        _ControlButton(
          key: const ValueKey('hint-button'),
          icon: Icons.lightbulb_rounded,
          label: l10n.hint,
          accent: const Color(0xFFFFC12A),
          costBadge: hintFree
              ? _CostBadge.free(l10n.free)
              : _CostBadge.coins(
                  hintCostCoins ?? GameEconomy.hintCoinCost,
                ),
          onTap: enabled && hintEnabled ? onHint : null,
        ),
        _ControlButton(
          icon: Icons.add_circle_outline_rounded,
          label: l10n.addTube,
          accent: AppColors.cyan,
          costBadge: addTubeCount == null
              ? null
              : _CostBadge.count(addTubeCount!),
          onTap: enabled && canAddTube ? onAddTube : null,
        ),
      ],
    );
  }
}

class _CostBadge {
  const _CostBadge._({this.coins, this.count, this.freeLabel});

  const _CostBadge.coins(int amount) : this._(coins: amount);

  const _CostBadge.count(int value) : this._(count: value);

  const _CostBadge.free(String label) : this._(freeLabel: label);

  final int? coins;
  final int? count;
  final String? freeLabel;
}

class _ControlButton extends StatelessWidget {
  const _ControlButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.accent = AppColors.text,
    this.costBadge,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final Color accent;
  final _CostBadge? costBadge;

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: AnimatedOpacity(
          opacity: enabled ? 1 : .36,
          duration: const Duration(milliseconds: 160),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(17),
              child: Container(
                height: 88,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF182A43), Color(0xFF091323)],
                  ),
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: const Color(0xFF43546E)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x6600030B),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            icon,
                            color: accent,
                            size: 28,
                            shadows: [
                              Shadow(
                                color: accent.withValues(alpha: .42),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              label,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xFFD6DEEA),
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          if (costBadge != null) ...[
                            const SizedBox(height: 3),
                            _CostBadgeChip(badge: costBadge!),
                          ],
                        ],
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

class _CostBadgeChip extends StatelessWidget {
  const _CostBadgeChip({required this.badge});

  final _CostBadge badge;

  @override
  Widget build(BuildContext context) {
    if (badge.freeLabel != null) {
      return Text(
        badge.freeLabel!,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Color(0xFF7DFFB2),
          fontWeight: FontWeight.w800,
          fontSize: 9,
        ),
      );
    }
    if (badge.count != null) {
      return Text(
        '${badge.count}',
        style: const TextStyle(
          color: AppColors.cyan,
          fontWeight: FontWeight.w900,
          fontSize: 10,
        ),
      );
    }
    final amount = badge.coins ?? 0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.monetization_on_rounded,
          color: Color(0xFFFFC13A),
          size: 12,
        ),
        const SizedBox(width: 2),
        Text(
          '-$amount',
          style: const TextStyle(
            color: Color(0xFFE8EEF8),
            fontWeight: FontWeight.w900,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
