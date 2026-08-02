// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Sortiere die Farben. Kläre deinen Kopf.';

  @override
  String get back => 'Zurück';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get play => 'SPIELEN';

  @override
  String get settings => 'Einstellungen';

  @override
  String get home => 'Start';

  @override
  String get levels => 'Level';

  @override
  String get collection => 'Sammlung';

  @override
  String get achievements => 'Erfolge';

  @override
  String get continueLabel => 'Weiter';

  @override
  String get pause => 'Pause';

  @override
  String get close => 'Schließen';

  @override
  String get free => 'Gratis';

  @override
  String get coin => 'Münze';

  @override
  String get coins => 'Münzen';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Züge';

  @override
  String get best => 'Best';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Gesperrt';

  @override
  String get ad => 'WERBUNG';

  @override
  String get watchAd => 'Werbung ansehen';

  @override
  String get claiming => 'Wird abgeholt...';

  @override
  String get homeTagline => 'Clever sortieren, Farben mischen!';

  @override
  String get progressAndAchievements => 'FORTSCHRITT & ERFOLGE';

  @override
  String get progressTapHint => 'Tippen: Statistiken und Abzeichen';

  @override
  String get dailyReward => 'Tägliche Belohnung';

  @override
  String get rewardReady => 'Belohnung bereit';

  @override
  String get comeTomorrow => 'Komm morgen wieder';

  @override
  String get collectionSubtitle => 'Themes durchstöbern';

  @override
  String get premiumThemes => 'PREMIUM-THEMES';

  @override
  String get premiumThemesBody =>
      'Klassisch, Galaxie, Ozean, Neon und Golden Age Themes werden hier freigeschaltet.';

  @override
  String get playCta => 'SPIELEN';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString Münzen$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString gratis Tipp';
  }

  @override
  String get levelMapTitle => 'LEVEL-KARTE';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString Level abgeschlossen';
  }

  @override
  String get newExperimentsBanner =>
      'NEUE EXPERIMENTE\nPORTAL • BOMBE • VENTIL • REAKTOR';

  @override
  String get settingsTitle => 'EINSTELLUNGEN';

  @override
  String get settingsSubtitleAudio => 'Ton- und Haptiksteuerung';

  @override
  String get settingsSubtitleVisual => 'Farben, Muster und Animationen';

  @override
  String get settingsSubtitleGeneral =>
      'Schwierigkeit und allgemeine Einstellungen';

  @override
  String get sectionAudioFeedback => 'TON & FEEDBACK';

  @override
  String get soundEffects => 'Soundeffekte';

  @override
  String get soundEffectsSubtitle => 'Auswahl-, Gieß- und Erfolgssounds';

  @override
  String get backgroundMusic => 'Hintergrundmusik';

  @override
  String get backgroundMusicSubtitle => 'Ruhige kosmische Ambient-Musik';

  @override
  String get haptics => 'Haptik';

  @override
  String get hapticsSubtitle => 'Leichtes Feedback beim Tippen';

  @override
  String get sectionVisual => 'VISUELLE EINSTELLUNGEN';

  @override
  String get neonPalette => 'Neon-Flüssigkeitspalette';

  @override
  String get neonPaletteSubtitle => 'Lebendige Neonfarben im Spiel';

  @override
  String get colorAccessibility => 'Farben-Barrierefreiheit';

  @override
  String get colorAccessibilitySubtitle =>
      'Fügt Flüssigkeiten dezente Muster hinzu';

  @override
  String get reducedAnimations => 'Reduzierte Animationen';

  @override
  String get reducedAnimationsSubtitle => 'Beschleunigt Gießbewegungen';

  @override
  String get sectionDifficulty => 'SCHWIERIGKEIT & ZEITDRUCK';

  @override
  String get offlineProgress => 'Offline-Fortschritt';

  @override
  String get offlineProgressBody =>
      'Deine Level und Einstellungen werden sicher auf diesem Gerät gespeichert.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Audio';

  @override
  String get tabVisual => 'Visuell';

  @override
  String get tabGeneral => 'Einstellungen';

  @override
  String get language => 'Sprache';

  @override
  String get languageSubtitle => 'App-Sprache wählen';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get languageSystemSubtitle =>
      'Sprache von Handy oder Tablet verwenden';

  @override
  String get difficultyEasy => 'Leicht';

  @override
  String get difficultyNormal => 'Normal';

  @override
  String get difficultyHard => 'Schwer';

  @override
  String get difficultyEasyDesc =>
      'Kein Zeitdruck • weniger Münzen • mehr Interstitial-Werbung';

  @override
  String get difficultyNormalDesc => 'Moderater Timer, leichter Druck';

  @override
  String get difficultyHardDesc => 'Sehr kurzer Timer, -5 s bei Fehlern';

  @override
  String get dailyRewardTitle => 'TÄGLICHE BELOHNUNG';

  @override
  String get dailyRewardClaimBody =>
      'Hol dir das Geschenk von heute. Komm täglich zurück, damit die Belohnung wächst.';

  @override
  String get dailyRewardClaimedBody =>
      'Heute schon abgeholt. Komm morgen wieder.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Serie: $streakString Tage';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'T$dayString';
  }

  @override
  String get plusHint => '+Tipp';

  @override
  String get claimDailyReward => 'Heutige Belohnung abholen';

  @override
  String get comeAgainTomorrow => 'Komm morgen wieder';

  @override
  String get achievementsTitle => 'ERFOLGE';

  @override
  String get achGreetingEmpty =>
      'Alles bereit. Schließe dein erstes Level ab und Abzeichen sammeln sich hier.';

  @override
  String get achGreetingFlow =>
      'Dein Flow brennt — du hast den Rhythmus des Spiels.';

  @override
  String get achGreetingStars =>
      'Deine Sternsammlung glänzt. Weiter so, Legende.';

  @override
  String get achGreetingVeteran => 'Gutes Tempo. Das Labor passt sich dir an.';

  @override
  String get achGreetingProgress =>
      'Solider Fortschritt. Jedes saubere Level macht dich schärfer.';

  @override
  String get achGreetingStarter =>
      'Starker Start. Noch ein paar Level und die Abzeichen kommen.';

  @override
  String get statLevel => 'Level';

  @override
  String get statStars => 'Sterne';

  @override
  String get statCoins => 'Münzen';

  @override
  String get statFlow => 'Flow';

  @override
  String get statUnlocked => 'Freigeschaltet';

  @override
  String get achievementLocked => 'Gesperrt';

  @override
  String get achievementPerfectSort => 'Perfekte Sortierung';

  @override
  String get achievementPerfectSortDesc =>
      'Innerhalb Par ohne Hilfe abschließen';

  @override
  String get achievementUnderPar => 'Unter Par';

  @override
  String get achievementUnderParDesc => 'Zielzüge nicht überschreiten';

  @override
  String get achievementNoUndo => 'Ohne Rückgängig';

  @override
  String get achievementNoUndoDesc => 'Ohne Rückgängig abschließen';

  @override
  String get achievementNoHint => 'Ohne Tipps';

  @override
  String get achievementNoHintDesc => 'Ohne Tipps lösen';

  @override
  String get achievementFlowMaster => 'Flow-Meister';

  @override
  String get achievementFlowMasterDesc => 'Erreiche Flow x5 in einem Level';

  @override
  String get achievementNewRecord => 'Neuer Rekord';

  @override
  String get achievementNewRecordDesc => 'Beste Zugzahl schlagen';

  @override
  String get achievementFirstTry => 'Erster Versuch';

  @override
  String get achievementFirstTryDesc => 'Ohne Neustart abschließen';

  @override
  String get achievementNoExtraTube => 'Ohne Extra-Röhre';

  @override
  String get achievementNoExtraTubeDesc => 'Ohne zusätzliche Röhre abschließen';

  @override
  String get undo => 'Rückgängig';

  @override
  String get restart => 'Neustart';

  @override
  String get hint => 'Tipp';

  @override
  String get addTube => 'Röhre hinzufügen';

  @override
  String get perfect => 'PERFEKT!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Level $levelString abgeschlossen';
  }

  @override
  String movesAndPar(int moves, int par) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return '$movesString Züge  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NEUER REKORD • ERFOLGE';

  @override
  String get achievementsHeader => 'ERFOLGE';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Tipp-Strafe: -$amountString Münzen';
  }

  @override
  String get doubleReward => 'DOPPELTE BELOHNUNG';

  @override
  String get goToLevels => 'LEVEL';

  @override
  String get continueNext => 'WEITER';

  @override
  String get backToLevelSelect => 'Zur Levelauswahl';

  @override
  String get bestLabel => 'Best';

  @override
  String get flowCombo => 'Flow-Combo';

  @override
  String get extraTube => 'Extra-Röhre';

  @override
  String get fullReward => 'Volle Belohnung';

  @override
  String get halfReward => 'Halbe Belohnung';

  @override
  String get quarterReward => 'Viertel-Belohnung';

  @override
  String starRewardLabel(int stars, String tone, int percent) {
    final intl.NumberFormat starsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String starsString = starsNumberFormat.format(stars);
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return '$starsString★ • $tone ($percentString%)';
  }

  @override
  String get newRule => 'NEUE REGEL';

  @override
  String get gotItStart => 'VERSTANDEN, START';

  @override
  String get firstTimeTipOnly => 'Nur beim ersten Mal angezeigt';

  @override
  String get mechanicBasicsTitle => 'SPIELANLEITUNG';

  @override
  String get mechanicBasicsHeadline => 'Röhren wählen, Flüssigkeit gießen';

  @override
  String get mechanicBasicsBody =>
      'Tippe eine Röhre, um die oberste Farbe zu wählen. Dann tippe eine Zielröhre — gleiche Farben stapeln sich oder gieße in eine leere Röhre.';

  @override
  String get mechanicBasicsTip =>
      'Ziel: Jede volle Röhre wird eine Farbe. Leere Röhren sind Helfer.';

  @override
  String get mechanicBasicsCaption => 'Wählen → Gießen → Sortieren';

  @override
  String get mechanicHiddenTitle => 'VERSTECKTE RÖHRE';

  @override
  String get mechanicHiddenHeadline => 'Nur die oberste Farbe ist sichtbar';

  @override
  String get mechanicHiddenBody =>
      'In dieser Röhre siehst du nur die oberste Farbe. Schichten darunter bleiben verschwommen, bis oben leer ist.';

  @override
  String get mechanicHiddenTip =>
      'Nicht blind gießen — zuerst oben leeren, unten enthüllen, dann entscheiden.';

  @override
  String get mechanicHiddenCaption => 'Oben klar • unten verschwommen';

  @override
  String get mechanicMixTitle => 'FARBMISCHUNG';

  @override
  String get mechanicMixHeadline => 'Zwei Farben werden zu einer neuen';

  @override
  String get mechanicMixBody =>
      'Gieße bestimmte Farben übereinander, um eine neue zu mischen. Folge den Gleichungen oben.';

  @override
  String get mechanicMixTip =>
      'Mengen müssen passen und das Ziel braucht freien Platz.';

  @override
  String get mechanicMixCaption => 'Rot + Gelb = Orange';

  @override
  String get mechanicFrozenTitle => 'GEFRORENE RÖHRE';

  @override
  String get mechanicFrozenHeadline => 'Eine Weile unberührbar';

  @override
  String get mechanicFrozenBody =>
      'In oder aus einer vereisten Röhre kannst du nicht gießen. Nach genug Zügen taut das Eis.';

  @override
  String get mechanicFrozenTip =>
      'Öffne Wege mit anderen Röhren; nutze sie sobald das Eis weg ist.';

  @override
  String get mechanicFrozenCaption => 'Züge warten → Eis schmilzt';

  @override
  String get mechanicLockedTitle => 'GESPERRTE RÖHRE';

  @override
  String get mechanicLockedHeadline => 'Zuerst eine andere Röhre fertig';

  @override
  String get mechanicLockedBody =>
      'Eine gesperrte Röhre bleibt zu, bis du eine bestimmte Anzahl Röhren abschließt.';

  @override
  String get mechanicLockedTip =>
      'Schließe zuerst leichte Röhren ab, dann nutze den gesperrten Platz.';

  @override
  String get mechanicLockedCaption => 'Abschließen → freischalten';

  @override
  String get mechanicHeatedTitle => 'HEIZRÖHRE';

  @override
  String get mechanicHeatedHeadline => 'Abfallflüssigkeit verdampfen';

  @override
  String get mechanicHeatedBody =>
      'In die Heizröhre gegossene Flüssigkeit verschwindet. Hitze-Ladungen sind begrenzt — meist für Abfallfarben.';

  @override
  String get mechanicHeatedTip =>
      'Ohne Hitze kannst du dort nicht gießen. Abfall früh beseitigen.';

  @override
  String get mechanicHeatedCaption => 'Abfall → Dampf';

  @override
  String get mechanicValveTitle => 'EINWEGVENTIL';

  @override
  String get mechanicValveHeadline => 'Nur hinein gießen';

  @override
  String get mechanicValveBody =>
      'Du kannst in eine Ventilröhre gießen, aber nichts herausnehmen. Sie wirkt wie permanenter Speicher.';

  @override
  String get mechanicValveTip =>
      'Falsche Farbe kann dich festsetzen. Ventile vorsichtig füllen.';

  @override
  String get mechanicValveCaption => 'Nur rein';

  @override
  String get mechanicPortalTitle => 'PORTAL-PAAR';

  @override
  String get mechanicPortalHeadline => 'Rein durch eins, raus durchs andere';

  @override
  String get mechanicPortalBody =>
      'Gieße in ein Portal und die Flüssigkeit erscheint im Zwilling. Beide Röhren sind verbunden.';

  @override
  String get mechanicPortalTip =>
      'Ziele auf ein Portal — das Füllen passiert auf der anderen Seite.';

  @override
  String get mechanicPortalCaption => 'A rein → B raus';

  @override
  String get mechanicBombTitle => 'BOMBEN-RÖHRE';

  @override
  String get mechanicBombHeadline => 'Vor dem Timer fertig';

  @override
  String get mechanicBombBody =>
      'Die markierte Röhre hat einen Countdown. Fülle sie mit einer Farbe, bevor er null erreicht, sonst scheiterst du.';

  @override
  String get mechanicBombTip =>
      'Sichere zuerst die Bomben-Röhre, dann sortiere den Rest.';

  @override
  String get mechanicBombCaption => 'Füllen vor Countdown-Ende';

  @override
  String get mechanicNarrowTitle => 'SCHMALE RÖHRE';

  @override
  String get mechanicNarrowHeadline => 'Puffer mit Kapazität 2';

  @override
  String get mechanicNarrowBody =>
      'Dieses Level hat eine kurze Helferröhre mit maximal 2 Einheiten. Nutze sie für enge Manöver.';

  @override
  String get mechanicNarrowTip =>
      'Sie muss leer sein zum Abschluss. 2 Einheiten zählen nicht als fertig — leere sie wieder.';

  @override
  String get mechanicNarrowCaption => 'Kapazität 2 • leer zum Abschluss';

  @override
  String get mechanicMovingTitle => 'BEWEGLICHES LAYOUT';

  @override
  String get mechanicMovingHeadline => 'Röhren tauschen Plätze';

  @override
  String get mechanicMovingBody =>
      'Alle paar Züge verschiebt sich das Brett und die Röhrenreihenfolge ändert sich. Gleiche Röhren — neue Positionen.';

  @override
  String get mechanicMovingTip => 'Verfolge Röhren anhand id und Farben.';

  @override
  String get mechanicMovingCaption => 'Wechsel alle 3 Züge';

  @override
  String get mechanicBossTitle => 'BOSS-EXPERIMENT';

  @override
  String get mechanicBossHeadline => 'Härtere Regeln';

  @override
  String get mechanicBossBody =>
      'Boss-Level haben ein Zuglimit und können mehrere Spezialregeln kombinieren. Spiele mit Plan.';

  @override
  String get mechanicBossTip =>
      'Bleib nahe am Par; vermeide unnötiges Rückgängig und verschwendetes Gießen.';

  @override
  String get mechanicBossCaption => 'Limit + Spezialregeln';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Level $levelString';
  }

  @override
  String get movesLabel => 'Züge';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Unbegrenzte Versuche  •  Offline';
  }

  @override
  String get pauseTooltip => 'Pause';

  @override
  String get resumeTooltip => 'Fortsetzen';

  @override
  String get settingsTooltip => 'Einstellungen';

  @override
  String get pausedTitle => 'SPIEL PAUSIERT';

  @override
  String get pausedBody => 'Timer und Countdown-Sounds sind pausiert.';

  @override
  String get resumeCta => 'FORTSETZEN';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'LEICHT  •  ENTSPANNT';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString ZÜGE';
  }

  @override
  String get hiddenLiquid => 'VERSTECKTE FLÜSSIGKEIT';

  @override
  String get frozenTube => 'GEFRORENE RÖHRE';

  @override
  String get iceCleared => 'EIS WEG';

  @override
  String get lockedTube => 'GESPERRTE RÖHRE';

  @override
  String get lockOpened => 'SCHLOSS OFFEN';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'ABFALL VERBRENNEN • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'HEIZRÖHRE • $remainingString';
  }

  @override
  String get portalPair => 'PORTAL-PAAR';

  @override
  String get oneWayValve => 'EINWEGVENTIL';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBE • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'WECHSEL ALLE $movesString ZÜGE';
  }

  @override
  String get narrowTubeCap2 => 'SCHMALE RÖHRE • KAP 2';

  @override
  String get hiddenMix => 'VERSTECKTE MISCHUNG';

  @override
  String get portalFlow => 'PORTAL-FLOW!';

  @override
  String get tubesShifted => 'RÖHREN VERSCHOBEN!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBE: $remainingString ZÜGE!';
  }

  @override
  String get iceBroken =>
      'Eis gebrochen! Die gefrorene Röhre ist jetzt nutzbar.';

  @override
  String get lockUnlocked => 'Schloss offen! Eine neue Röhre ist bereit.';

  @override
  String get tubeFrozenMsg =>
      'Diese Röhre ist gefroren. Ein paar richtige Züge tauen sie auf.';

  @override
  String get tubeLockedMsg =>
      'Diese Röhre ist gesperrt. Schließe zuerst eine andere Farbe ab.';

  @override
  String get valveOneWayMsg =>
      'Das goldene Ventil ist einweg: hinein gießen geht, heraus nicht.';

  @override
  String get heatExhaustedMsg =>
      'Diese Heizröhre hat keine Verbrennungsladungen mehr.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Nicht genug Münzen ($costString).';
  }

  @override
  String get adFailed => 'Werbung konnte nicht abgeschlossen werden.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString Münzen • $title wieder geöffnet';
  }

  @override
  String reopenAd(String title) {
    return 'Mit Werbung geöffnet • $title';
  }

  @override
  String get tipQuotaEmpty => 'Keine Tipps mehr für dieses Level.';

  @override
  String get rewardsNotReady => 'Belohnungssystem ist nicht bereit.';

  @override
  String get freeHintUsed => 'Gratis-Tipp verwendet.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Tipp: -$costString Münzen';
  }

  @override
  String get noHintAvailable => 'Gerade kein hilfreicher Tipp.';

  @override
  String get assistHint => 'Tipp';

  @override
  String get assistUndo => 'Rückgängig';

  @override
  String get freeHintEarned => '1 gratis Tipp erhalten.';

  @override
  String get freeUndoEarned => '1 gratis Rückgängig erhalten.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString Guthaben • Fehlversuch (min $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Schuldenlimit ($floorString). Werbung ansehen zum Wiederholen.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString Guthaben • Neustart';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Nicht genug Münzen ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Werbung ansehen für 1 gratis $label.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Schuldenlimit ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Du bist am Schuldenboden. Werbung ansehen zum erneuten Versuch.';

  @override
  String get tipUnlockPaidBody =>
      'Du hast diese Regel einmal gratis gesehen.\nErneut lesen kostet Münzen.';

  @override
  String get tipUnlockAdBody =>
      'Nicht genug Münzen.\nWerbung ansehen, um diesen Tipp gratis zu öffnen.';

  @override
  String get yourBalance => 'Guthaben: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '$costString bezahlen';
  }

  @override
  String get timeUp => 'ZEIT ABGELAUFEN';

  @override
  String get bombExploded => 'BOMBE EXPLODIERT!';

  @override
  String get moveLimitReached => 'ZUGLIMIT ERREICHT';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Fehlversuch: -$amountString Guthaben (Schuld min $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Du kannst den Zeitdruck im Leicht-Modus ausschalten.';

  @override
  String get bombFailHint =>
      'Fülle die markierte Röhre mit einer Farbe, bevor der rote Countdown endet.';

  @override
  String get bossFailHint =>
      'Boss-Experiment hat das Zuglimit überschritten. Plane Mischungen und leere Röhren sorgfältig.';

  @override
  String get debtLimitRetryHint =>
      'Du bist am Schuldenlimit — Werbung ansehen zum Wiederholen.';

  @override
  String get retryWithAd => 'WERBUNG • ERNEUT';

  @override
  String get retryAgain => 'NOCHMAL';

  @override
  String get vaporized => 'VERDAMPFT!';

  @override
  String colorClearedBonus(String color) {
    return '$color ENTFERNT  •  +4 S';
  }

  @override
  String get newColorFormed => 'NEUE FARBE ENTSTANDEN!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => 'LEGENDÄRER FLOW!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLOW x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Legendärer Flow';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Flow x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Röhre $id, $unitsString Einheiten gefüllt';
  }

  @override
  String get colorRed => 'Rot';

  @override
  String get colorBlue => 'Blau';

  @override
  String get colorPurple => 'Lila';

  @override
  String get colorYellow => 'Gelb';

  @override
  String get colorGreen => 'Grün';

  @override
  String get colorOrange => 'Orange';

  @override
  String get colorPink => 'Pink';

  @override
  String get colorCyan => 'Cyan';

  @override
  String get colorLime => 'Limette';

  @override
  String get colorBrown => 'Braun';

  @override
  String get skipLevelOfferBody =>
      'Dieses Level ist hart. Sieh dir eine Werbung an, um das nächste freizuschalten.';

  @override
  String get skipLevelCta => 'WERBUNG • ÜBERSPRINGEN';

  @override
  String get skipLevelNote =>
      'Du kannst später zurückkehren und dieses Level beenden.';

  @override
  String get skipLevelUnlocked => 'Nächstes Level freigeschaltet!';

  @override
  String get developerModeTitle => 'Entwicklermodus';

  @override
  String get developerModePasswordHint => 'Passwort';

  @override
  String get developerModeUnlock => 'Freischalten';

  @override
  String get developerModeEnabled => 'Alle Level zum Testen freigeschaltet.';

  @override
  String get developerModeWrongPassword => 'Falsches Passwort';

  @override
  String get developerModeActive => 'Entwicklermodus aktiv';

  @override
  String get developerModeDisable => 'Entwicklermodus deaktivieren';
}
