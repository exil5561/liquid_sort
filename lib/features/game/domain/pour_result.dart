import 'game_move.dart';
import 'tube_model.dart';

enum PourFailure {
  sameTube,
  emptySource,
  completedSource,
  fullDestination,
  colorMismatch,
  uselessMove,
  tubeNotFound,
  frozenTube,
  lockedTube,
  heaterExhausted,
  oneWayValve,
}

class PourResult {
  PourResult._({
    required this.isSuccess,
    this.failure,
    this.move,
    List<TubeModel> tubes = const [],
  }) : tubes = List.unmodifiable(tubes);

  factory PourResult.success({
    required GameMove move,
    required List<TubeModel> tubes,
  }) => PourResult._(isSuccess: true, move: move, tubes: tubes);

  factory PourResult.failure(PourFailure failure) =>
      PourResult._(isSuccess: false, failure: failure);

  final bool isSuccess;
  final PourFailure? failure;
  final GameMove? move;
  final List<TubeModel> tubes;
}
