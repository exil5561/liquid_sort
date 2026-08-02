import 'dart:math' as math;

import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';

class TubeTransformData {
  const TubeTransformData({
    required this.offset,
    required this.rotation,
    required this.scale,
    required this.liquidProgress,
    required this.streamStrength,
  });

  final Offset offset;
  final double rotation;
  final double scale;
  final double liquidProgress;
  final double streamStrength;
}

class PourAnimationState {
  const PourAnimationState(this.progress);

  final double progress;

  TubeTransformData sourceTransform({
    required Offset sourcePosition,
    required Offset destinationPosition,
    required double tubeWidth,
    required double tubeHeight,
    required bool reducedMotion,
  }) {
    final direction = destinationPosition.dx >= sourcePosition.dx ? 1.0 : -1.0;
    final destinationMouth = destinationPosition + Offset(tubeWidth / 2, 6);
    final targetMouth =
        destinationMouth +
        Offset(-direction * tubeWidth * .5, -tubeHeight * .32);
    final sourceMouth = sourcePosition + Offset(tubeWidth / 2, 6);
    final targetOffset = targetMouth - sourceMouth;

    final travelIn = _curve(progress, 0, reducedMotion ? .18 : .3);
    final travelOut = 1 - _curve(progress, reducedMotion ? .76 : .72, 1);
    final travel = math.min(travelIn, travelOut).clamp(0.0, 1.0);
    final tiltIn = _curve(progress, reducedMotion ? .12 : .22, .38);
    final tiltOut = 1 - _curve(progress, .7, reducedMotion ? .86 : .92);
    final tilt = math.min(tiltIn, tiltOut).clamp(0.0, 1.0);
    final liquid = _curve(progress, .38, .7);
    final streamIn = _curve(progress, .36, .43);
    final streamOut = 1 - _curve(progress, .68, .76);
    final settle = progress > .88
        ? math.sin((progress - .88) / .12 * math.pi * 2) * (1 - progress) * .7
        : 0.0;

    return TubeTransformData(
      offset: Offset(
        targetOffset.dx * travel,
        targetOffset.dy * travel - math.sin(progress * math.pi) * 8,
      ),
      rotation: direction * 1.02 * tilt,
      scale: 1 + .035 * math.sin(math.pi * travel) + settle * .02,
      liquidProgress: liquid,
      streamStrength: math.min(streamIn, streamOut).clamp(0.0, 1.0),
    );
  }

  double destinationSettle() {
    if (progress < .38) return 0;
    final phase = ((progress - .38) / .62).clamp(0.0, 1.0);
    return math.sin(phase * math.pi * 4) * (1 - phase);
  }

  double _curve(double value, double begin, double end) {
    if (value <= begin) return 0;
    if (value >= end) return 1;
    return Curves.easeInOutCubic.transform((value - begin) / (end - begin));
  }
}
