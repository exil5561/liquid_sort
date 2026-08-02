enum GameDifficulty {
  easy,
  normal,
  hard;

  String get label => switch (this) {
    GameDifficulty.easy => 'Kolay',
    GameDifficulty.normal => 'Normal',
    GameDifficulty.hard => 'Zor',
  };

  String get description => switch (this) {
    GameDifficulty.easy => 'Zaman baskısı yok',
    GameDifficulty.normal => 'Geniş süre, hafif baskı',
    GameDifficulty.hard => 'Çok kısa süre, hatalı hamlede -5 sn',
  };
}
