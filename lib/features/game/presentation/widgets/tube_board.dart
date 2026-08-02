import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../domain/game_state.dart';
import '../../domain/pour_result.dart';
import '../animations/pour_animation_state.dart';
import '../painters/liquid_stream_painter.dart';
import 'glass_tube_widget.dart';

class TubeBoard extends StatelessWidget {
  const TubeBoard({
    super.key,
    required this.gameState,
    required this.animation,
    required this.shakeAnimation,
    required this.celebrationAnimation,
    required this.celebratingTubeId,
    required this.frozenTubeIds,
    required this.lockedTubeId,
    required this.hiddenTubeId,
    required this.pendingPour,
    required this.onTubeTap,
    this.heatedTubeId,
    this.bottomTubeCount = 2,
    this.portalTubeA,
    this.portalTubeB,
    this.valveTubeId,
    this.bombTubeId,
    this.bombRemaining,
    this.movingLayoutShift = 0,
    this.ambientAnimation = kAlwaysDismissedAnimation,
    this.invalidTubeId,
    this.accessibilityPatterns = false,
    this.reducedMotion = false,
  });

  final GameState gameState;
  final Animation<double> animation;
  final Animation<double> shakeAnimation;
  final Animation<double> celebrationAnimation;
  final Animation<double> ambientAnimation;
  final String? celebratingTubeId;
  final String? invalidTubeId;
  final Set<String> frozenTubeIds;
  final String? lockedTubeId;
  final String? hiddenTubeId;
  final String? heatedTubeId;
  final int bottomTubeCount;
  final String? portalTubeA;
  final String? portalTubeB;
  final String? valveTubeId;
  final String? bombTubeId;
  final int? bombRemaining;
  final int movingLayoutShift;
  final PourResult? pendingPour;
  final bool accessibilityPatterns;
  final bool reducedMotion;
  final ValueChanged<String> onTubeTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final count = gameState.tubes.length;
        final lowerRowCount =
            bottomTubeCount + (gameState.extraTubeUsed ? 1 : 0);
        final upperTubeCount = count - lowerRowCount;
        final rowCounts = <int>[
          if (upperTubeCount <= 7)
            upperTubeCount
          else ...[
            (upperTubeCount / 2).ceil(),
            upperTubeCount ~/ 2,
          ],
          lowerRowCount,
        ];
        final columns = rowCounts.reduce(math.max);
        final rows = rowCounts.length;
        const horizontalGap = 13.0;
        const verticalGap = 25.0;
        final maxWidth =
            (constraints.maxWidth - horizontalGap * (columns - 1)) / columns;
        final tubeWidth = maxWidth.clamp(30.0, 56.0);
        final tubeHeight = tubeWidth * 3.14;
        final boardHeight = rows * tubeHeight + (rows - 1) * verticalGap + 18;
        final positions = <Offset>[];

        for (var row = 0; row < rowCounts.length; row++) {
          final rowCount = rowCounts[row];
          final rowWidth =
              rowCount * tubeWidth + (rowCount - 1) * horizontalGap;
          for (var column = 0; column < rowCount; column++) {
            positions.add(
              Offset(
                (constraints.maxWidth - rowWidth) / 2 +
                    column * (tubeWidth + horizontalGap),
                14 + row * (tubeHeight + verticalGap),
              ),
            );
          }
        }
        if (movingLayoutShift > 0 && upperTubeCount > 1) {
          final original = List<Offset>.of(positions);
          final shift = movingLayoutShift % upperTubeCount;
          for (var index = 0; index < upperTubeCount; index++) {
            positions[index] = original[(index + shift) % upperTubeCount];
          }
        }

        return SizedBox(
          height: boardHeight,
          child: AnimatedBuilder(
            animation: Listenable.merge([
              animation,
              shakeAnimation,
              celebrationAnimation,
              ambientAnimation,
            ]),
            builder: (context, child) => _buildAnimatedBoard(
              positions: positions,
              tubeWidth: tubeWidth,
              tubeHeight: tubeHeight,
            ),
          ),
        );
      },
    );
  }

  Widget _buildAnimatedBoard({
    required List<Offset> positions,
    required double tubeWidth,
    required double tubeHeight,
  }) {
    final move = pendingPour?.move;
    final sourceIndex = move == null
        ? -1
        : gameState.tubes.indexWhere((tube) => tube.id == move.sourceTubeId);
    final destinationIndex = move == null
        ? -1
        : gameState.tubes.indexWhere(
            (tube) => tube.id == move.destinationTubeId,
          );
    final pourState = PourAnimationState(animation.value);
    TubeTransformData? sourceTransform;
    if (sourceIndex >= 0 && destinationIndex >= 0) {
      sourceTransform = pourState.sourceTransform(
        sourcePosition: positions[sourceIndex],
        destinationPosition: positions[destinationIndex],
        tubeWidth: tubeWidth,
        tubeHeight: tubeHeight,
        reducedMotion: reducedMotion,
      );
    }
    final order = List<int>.generate(gameState.tubes.length, (index) => index);
    if (sourceIndex >= 0) {
      order.remove(sourceIndex);
      order.add(sourceIndex);
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        if (sourceTransform != null &&
            sourceIndex >= 0 &&
            destinationIndex >= 0)
          Positioned.fill(
            child: IgnorePointer(
              child: CustomPaint(
                painter: LiquidStreamPainter(
                  start:
                      positions[sourceIndex] +
                      sourceTransform.offset +
                      Offset(tubeWidth / 2, 7),
                  end: positions[destinationIndex] + Offset(tubeWidth / 2, 10),
                  color: move!.color.color,
                  strength: sourceTransform.streamStrength,
                  phase: animation.value,
                ),
              ),
            ),
          ),
        for (final index in order)
          _buildTube(
            index: index,
            positions: positions,
            sourceIndex: sourceIndex,
            destinationIndex: destinationIndex,
            sourceTransform: sourceTransform,
            pourState: pourState,
            tubeWidth: tubeWidth,
            tubeHeight: tubeHeight,
          ),
      ],
    );
  }

  Widget _buildTube({
    required int index,
    required List<Offset> positions,
    required int sourceIndex,
    required int destinationIndex,
    required TubeTransformData? sourceTransform,
    required PourAnimationState pourState,
    required double tubeWidth,
    required double tubeHeight,
  }) {
    final currentTube = gameState.tubes[index];
    final move = pendingPour?.move;
    final isSource = index == sourceIndex && sourceTransform != null;
    final isDestination = index == destinationIndex && sourceTransform != null;
    final beforeTube = move == null || (!isSource && !isDestination)
        ? currentTube
        : move.beforeTubes.firstWhere((tube) => tube.id == currentTube.id);
    final destinationAfter = isDestination
        ? pendingPour!.tubes.firstWhere((tube) => tube.id == currentTube.id)
        : null;
    final selected = gameState.selectedTubeId == currentTube.id;
    final celebration = celebratingTubeId == currentTube.id
        ? celebrationAnimation.value
        : 0.0;
    final celebrationScale = 1 + math.sin(celebration * math.pi) * .09;
    final shake = invalidTubeId == currentTube.id
        ? math.sin(shakeAnimation.value * math.pi * 5) *
              (1 - shakeAnimation.value) *
              (reducedMotion ? 3 : 8)
        : 0.0;
    final ambient = reducedMotion
        ? 0.0
        : math.sin(ambientAnimation.value * math.pi * 2 + index * .72) * .15;
    final selectedMotion = selected
        ? math.sin(ambientAnimation.value * math.pi * 4) * .48
        : 0.0;
    final transferProgress = sourceTransform?.liquidProgress ?? 0.0;
    final destinationSettle = isDestination
        ? pourState.destinationSettle() * .72
        : 0.0;
    final offset = isSource ? sourceTransform.offset : Offset.zero;
    final rotation = isSource ? sourceTransform.rotation : 0.0;
    final scale = (isSource ? sourceTransform.scale : 1.0) * celebrationScale;
    final forceCompleted =
        destinationAfter?.isCompleted == true && transferProgress > .88;

    return AnimatedPositioned(
      key: ValueKey('position-${currentTube.id}'),
      duration: const Duration(milliseconds: 420),
      curve: Curves.easeInOutCubic,
      left: positions[index].dx,
      top: positions[index].dy,
      width: tubeWidth,
      height: tubeHeight,
      child: Transform.translate(
        offset: offset + Offset(shake, selected ? -10 : 0),
        child: Transform.rotate(
          alignment: Alignment.topCenter,
          angle: rotation,
          child: Transform.scale(
            alignment: Alignment.topCenter,
            scale: scale,
            child: RepaintBoundary(
              child: GestureDetector(
                key: ValueKey('tube-${currentTube.id}'),
                behavior: HitTestBehavior.opaque,
                onTap: () => onTubeTap(currentTube.id),
                child: GlassTubeWidget(
                  tube: beforeTube,
                  width: tubeWidth,
                  height: tubeHeight,
                  isSelected: selected,
                  isHintSource: gameState.hintSourceId == currentTube.id,
                  isHintDestination:
                      gameState.hintDestinationId == currentTube.id,
                  isInvalid:
                      invalidTubeId == currentTube.id &&
                      shakeAnimation.value < 1,
                  isFrozen: frozenTubeIds.contains(currentTube.id),
                  isLocked: lockedTubeId == currentTube.id,
                  isHeated: heatedTubeId == currentTube.id,
                  portalColor: currentTube.id == portalTubeA
                      ? AppColors.cyan
                      : currentTube.id == portalTubeB
                      ? AppColors.violet
                      : null,
                  isValve: valveTubeId == currentTube.id,
                  bombRemaining: bombTubeId == currentTube.id
                      ? bombRemaining
                      : null,
                  isMoving: movingLayoutShift > 0,
                  hideLowerLiquids: hiddenTubeId == currentTube.id,
                  accessibilityPatterns: accessibilityPatterns,
                  liquidMotion:
                      ambient +
                      selectedMotion +
                      (isSource ? transferProgress * 1.3 : 0) +
                      destinationSettle,
                  celebration: celebration,
                  outgoingAmount: isSource
                      ? move!.amount * transferProgress
                      : 0,
                  incomingColor: isDestination ? move!.color : null,
                  incomingAmount: isDestination
                      ? move!.amount * transferProgress
                      : 0,
                  forceCompleted: forceCompleted,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
