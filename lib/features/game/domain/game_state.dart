import 'game_move.dart';
import 'game_status.dart';
import 'level_definition.dart';
import 'tube_model.dart';

const _unset = Object();

class GameState {
  GameState({
    required this.currentLevel,
    required List<TubeModel> tubes,
    required this.moveCount,
    required this.parMoves,
    required List<GameMove> history,
    required this.status,
    this.selectedTubeId,
    this.extraTubeUsed = false,
    this.freeUndosRemaining = 5,
    this.undoUses = 0,
    this.hintUses = 0,
    this.hintSourceId,
    this.hintDestinationId,
  }) : tubes = List.unmodifiable(tubes),
       history = List.unmodifiable(history);

  factory GameState.fromLevel(LevelDefinition level) => GameState(
    currentLevel: level.number,
    tubes: level.tubes,
    moveCount: 0,
    parMoves: level.parMoves,
    history: const [],
    status: GameStatus.playing,
  );

  factory GameState.fromJson(Map<String, Object?> json) => GameState(
    currentLevel: json['currentLevel']! as int,
    tubes: (json['tubes']! as List<Object?>)
        .cast<Map<String, Object?>>()
        .map(TubeModel.fromJson)
        .toList(),
    selectedTubeId: json['selectedTubeId'] as String?,
    moveCount: json['moveCount']! as int,
    parMoves: json['parMoves']! as int,
    history: (json['history']! as List<Object?>)
        .cast<Map<String, Object?>>()
        .map(GameMove.fromJson)
        .toList(),
    status: GameStatus.values.byName(json['status']! as String),
    extraTubeUsed: json['extraTubeUsed']! as bool,
    freeUndosRemaining: json['freeUndosRemaining']! as int,
    undoUses: json['undoUses'] as int? ?? 0,
    hintUses: json['hintUses'] as int? ?? 0,
    hintSourceId: json['hintSourceId'] as String?,
    hintDestinationId: json['hintDestinationId'] as String?,
  );

  final int currentLevel;
  final List<TubeModel> tubes;
  final String? selectedTubeId;
  final int moveCount;
  final int parMoves;
  final List<GameMove> history;
  final GameStatus status;
  final bool extraTubeUsed;
  final int freeUndosRemaining;
  final int undoUses;
  final int hintUses;
  final String? hintSourceId;
  final String? hintDestinationId;

  bool get isSolved =>
      tubes.where((tube) => !tube.isEmpty).every((tube) => tube.isCompleted);

  GameState copyWith({
    int? currentLevel,
    List<TubeModel>? tubes,
    Object? selectedTubeId = _unset,
    int? moveCount,
    int? parMoves,
    List<GameMove>? history,
    GameStatus? status,
    bool? extraTubeUsed,
    int? freeUndosRemaining,
    int? undoUses,
    int? hintUses,
    Object? hintSourceId = _unset,
    Object? hintDestinationId = _unset,
  }) => GameState(
    currentLevel: currentLevel ?? this.currentLevel,
    tubes: tubes ?? this.tubes,
    selectedTubeId: identical(selectedTubeId, _unset)
        ? this.selectedTubeId
        : selectedTubeId as String?,
    moveCount: moveCount ?? this.moveCount,
    parMoves: parMoves ?? this.parMoves,
    history: history ?? this.history,
    status: status ?? this.status,
    extraTubeUsed: extraTubeUsed ?? this.extraTubeUsed,
    freeUndosRemaining: freeUndosRemaining ?? this.freeUndosRemaining,
    undoUses: undoUses ?? this.undoUses,
    hintUses: hintUses ?? this.hintUses,
    hintSourceId: identical(hintSourceId, _unset)
        ? this.hintSourceId
        : hintSourceId as String?,
    hintDestinationId: identical(hintDestinationId, _unset)
        ? this.hintDestinationId
        : hintDestinationId as String?,
  );

  Map<String, Object?> toJson() => {
    'currentLevel': currentLevel,
    'tubes': tubes.map((tube) => tube.toJson()).toList(),
    'selectedTubeId': selectedTubeId,
    'moveCount': moveCount,
    'parMoves': parMoves,
    'history': history.map((move) => move.toJson()).toList(),
    'status': status.name,
    'extraTubeUsed': extraTubeUsed,
    'freeUndosRemaining': freeUndosRemaining,
    'undoUses': undoUses,
    'hintUses': hintUses,
    'hintSourceId': hintSourceId,
    'hintDestinationId': hintDestinationId,
  };
}
