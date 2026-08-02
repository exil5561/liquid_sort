import 'level_definition.dart';

class LevelValidationException implements Exception {
  const LevelValidationException(this.message);
  final String message;

  @override
  String toString() => 'LevelValidationException: $message';
}

class LevelValidator {
  const LevelValidator();

  void validate(LevelDefinition level) {
    if (level.number < 1) {
      throw LevelValidationException('Level number must be positive.');
    }
    final ids = <String>{};
    final counts = <Object, int>{};
    for (final tube in level.tubes) {
      if (tube.capacity < 2 || tube.capacity > 4) {
        throw LevelValidationException(
          'Level ${level.number}: tube ${tube.id} capacity must be 2-4.',
        );
      }
      if (tube.liquids.length > tube.capacity) {
        throw LevelValidationException(
          'Level ${level.number}: tube ${tube.id} overflows.',
        );
      }
      if (!ids.add(tube.id)) {
        throw LevelValidationException(
          'Level ${level.number}: duplicate tube id ${tube.id}.',
        );
      }
      for (final color in tube.liquids) {
        counts[color] = (counts[color] ?? 0) + 1;
      }
    }
    for (final entry in counts.entries) {
      if (level.mixRecipes.isEmpty &&
          level.heatedTubeId == null &&
          entry.value != 4) {
        throw LevelValidationException(
          'Level ${level.number}: ${entry.key} occurs ${entry.value} times.',
        );
      }
    }
    final unitsAfterHeat =
        counts.values.fold<int>(0, (total, count) => total + count) -
        level.heatUnitCapacity;
    if ((level.mixRecipes.isNotEmpty || level.heatedTubeId != null) &&
        unitsAfterHeat % 4 != 0) {
      throw LevelValidationException(
        'Level ${level.number}: units remaining after special actions must be divisible by 4.',
      );
    }
    for (final tubeId in [
      level.hiddenTubeId,
      level.frozenTubeId,
      level.lockedTubeId,
      level.heatedTubeId,
      level.portalTubeA,
      level.portalTubeB,
      level.valveTubeId,
      level.bombTubeId,
    ]) {
      if (tubeId != null && !ids.contains(tubeId)) {
        throw LevelValidationException(
          'Level ${level.number}: mechanic references missing tube $tubeId.',
        );
      }
    }
    if ((level.heatedTubeId == null) != (level.heatUnitCapacity == 0)) {
      throw LevelValidationException(
        'Level ${level.number}: heated tube and heat capacity must be configured together.',
      );
    }
    if ((level.portalTubeA == null) != (level.portalTubeB == null)) {
      throw LevelValidationException(
        'Level ${level.number}: both portal tubes must be configured.',
      );
    }
    if (level.portalTubeA != null && level.portalTubeA == level.portalTubeB) {
      throw LevelValidationException(
        'Level ${level.number}: portal tubes must be different.',
      );
    }
    if ((level.bombTubeId == null) != (level.bombMoveLimit == null)) {
      throw LevelValidationException(
        'Level ${level.number}: bomb tube and move limit must be configured together.',
      );
    }
    final nonEmpty = level.tubes.where((tube) => !tube.isEmpty);
    if (nonEmpty.isEmpty || nonEmpty.every((tube) => tube.isCompleted)) {
      throw LevelValidationException(
        'Level ${level.number} is empty or already completed.',
      );
    }
  }
}
