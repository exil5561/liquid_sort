import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/core/services/feedback_service.dart';
import 'package:liquid_sort/features/game/application/game_controller.dart';
import 'package:liquid_sort/features/game/domain/game_status.dart';
import 'package:liquid_sort/features/progress/data/progress_repository.dart';

void main() {
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer(
      overrides: [
        progressRepositoryProvider.overrideWithValue(_MemoryProgress()),
        feedbackServiceProvider.overrideWithValue(const _SilentFeedback()),
      ],
    );
  });

  tearDown(() => container.dispose());

  test('selection, move count and exact undo work together', () {
    final controller = container.read(gameControllerProvider.notifier);
    controller.startLevel(1);
    final before = container.read(gameControllerProvider).tubes;

    expect(controller.tapTube('t1'), isNull);
    expect(container.read(gameControllerProvider).selectedTubeId, 't1');
    final result = controller.tapTube('t3');
    expect(result!.isSuccess, isTrue);
    controller.commitPour(result);
    controller.finishPourAnimation();

    expect(container.read(gameControllerProvider).moveCount, 1);
    expect(container.read(gameControllerProvider).status, GameStatus.playing);

    controller.undo();
    final restored = container.read(gameControllerProvider);
    expect(restored.moveCount, 0);
    expect(restored.tubes, before);
    expect(restored.selectedTubeId, isNull);
    expect(restored.freeUndosRemaining, 4);
  });

  test('restart removes the temporary extra tube', () {
    final controller = container.read(gameControllerProvider.notifier);
    controller.startLevel(2);
    final originalCount = container.read(gameControllerProvider).tubes.length;

    controller.addExtraTube();
    expect(
      container.read(gameControllerProvider).tubes.length,
      originalCount + 1,
    );
    expect(container.read(gameControllerProvider).extraTubeUsed, isTrue);

    controller.restart();
    expect(container.read(gameControllerProvider).tubes.length, originalCount);
    expect(container.read(gameControllerProvider).extraTubeUsed, isFalse);
  });
}

class _MemoryProgress implements ProgressRepository {
  @override
  Set<int> get completedLevels => {};
  @override
  bool get hapticsEnabled => false;
  @override
  int get highestUnlockedLevel => 1;
  @override
  bool get musicEnabled => false;
  @override
  bool get reducedAnimations => true;
  @override
  bool get soundEnabled => false;
  @override
  bool get tempoEnabled => false;
  @override
  int? bestMovesFor(int level) => null;
  @override
  Future<void> saveLevelCompleted(int level, int moves) async {}
  @override
  Future<void> setHapticsEnabled(bool enabled) async {}
  @override
  Future<void> setMusicEnabled(bool enabled) async {}
  @override
  Future<void> setReducedAnimations(bool enabled) async {}
  @override
  Future<void> setSoundEnabled(bool enabled) async {}
  @override
  Future<void> setTempoEnabled(bool enabled) async {}
}

class _SilentFeedback implements FeedbackService {
  const _SilentFeedback();
  @override
  Future<void> button() async {}
  @override
  Future<void> completion() async {}
  @override
  Future<void> invalid() async {}
  @override
  Future<void> pour() async {}
  @override
  Future<void> selection() async {}
  @override
  Future<void> undo() async {}
}
