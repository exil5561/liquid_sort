// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Ordina i colori. Libera la mente.';

  @override
  String get back => 'Indietro';

  @override
  String get cancel => 'Annulla';

  @override
  String get play => 'GIOCA';

  @override
  String get settings => 'Impostazioni';

  @override
  String get home => 'Home';

  @override
  String get levels => 'Livelli';

  @override
  String get collection => 'Collezione';

  @override
  String get achievements => 'Obiettivi';

  @override
  String get continueLabel => 'Continua';

  @override
  String get pause => 'Pausa';

  @override
  String get close => 'Chiudi';

  @override
  String get free => 'Gratis';

  @override
  String get coin => 'Moneta';

  @override
  String get coins => 'Monete';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Mosse';

  @override
  String get best => 'Miglior';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Bloccato';

  @override
  String get ad => 'PUBBLICITÀ';

  @override
  String get watchAd => 'Guarda annuncio';

  @override
  String get claiming => 'Riscatto...';

  @override
  String get homeTagline => 'Ordina con intelligenza, mescola i colori!';

  @override
  String get progressAndAchievements => 'PROGRESSI E OBIETTIVI';

  @override
  String get progressTapHint => 'Tocca: statistiche e badge';

  @override
  String get dailyReward => 'Ricompensa giornaliera';

  @override
  String get rewardReady => 'Ricompensa pronta';

  @override
  String get comeTomorrow => 'Torna domani';

  @override
  String get collectionSubtitle => 'Sfoglia i temi';

  @override
  String get premiumThemes => 'TEMI PREMIUM';

  @override
  String get premiumThemesBody =>
      'I temi Classico, Galassia, Oceano, Neon e Età d\'oro si sbloccano qui.';

  @override
  String get playCta => 'GIOCA';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString monete$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString suggerimento gratis';
  }

  @override
  String get levelMapTitle => 'MAPPA LIVELLI';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString livelli completati';
  }

  @override
  String get newExperimentsBanner =>
      'NUOVI ESPERIMENTI\nPORTALE • BOMBA • VALVOLA • REATTORE';

  @override
  String get settingsTitle => 'IMPOSTAZIONI';

  @override
  String get settingsSubtitleAudio => 'Controlli audio e vibrazione';

  @override
  String get settingsSubtitleVisual => 'Colori, pattern e animazioni';

  @override
  String get settingsSubtitleGeneral => 'Difficoltà e preferenze generali';

  @override
  String get sectionAudioFeedback => 'AUDIO E FEEDBACK';

  @override
  String get soundEffects => 'Effetti sonori';

  @override
  String get soundEffectsSubtitle =>
      'Suoni di selezione, versamento e successo';

  @override
  String get backgroundMusic => 'Musica di sottofondo';

  @override
  String get backgroundMusicSubtitle => 'Musica ambient cosmica e calma';

  @override
  String get haptics => 'Vibrazione';

  @override
  String get hapticsSubtitle => 'Feedback leggero al tocco';

  @override
  String get sectionVisual => 'PREFERENZE VISIVE';

  @override
  String get neonPalette => 'Palette liquido neon';

  @override
  String get neonPaletteSubtitle => 'Colori neon vividi usati nel gioco';

  @override
  String get colorAccessibility => 'Accessibilità colori';

  @override
  String get colorAccessibilitySubtitle =>
      'Aggiunge pattern sottili ai liquidi';

  @override
  String get reducedAnimations => 'Animazioni ridotte';

  @override
  String get reducedAnimationsSubtitle => 'Accelera i movimenti di versamento';

  @override
  String get sectionDifficulty => 'DIFFICOLTÀ E PRESSIONE TEMPORALE';

  @override
  String get offlineProgress => 'Progressi offline';

  @override
  String get offlineProgressBody =>
      'I tuoi livelli e impostazioni sono salvati in sicurezza su questo dispositivo.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Audio';

  @override
  String get tabVisual => 'Visivo';

  @override
  String get tabGeneral => 'Impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get languageSubtitle => 'Scegli la lingua dell\'app';

  @override
  String get languageSystem => 'Predefinita di sistema';

  @override
  String get languageSystemSubtitle => 'Usa la lingua di telefono o tablet';

  @override
  String get difficultyEasy => 'Facile';

  @override
  String get difficultyNormal => 'Normale';

  @override
  String get difficultyHard => 'Difficile';

  @override
  String get difficultyEasyDesc =>
      'Nessuna pressione temporale • meno monete • più annunci interstitial';

  @override
  String get difficultyNormalDesc => 'Timer moderato, pressione leggera';

  @override
  String get difficultyHardDesc => 'Timer molto breve, -5 s sugli errori';

  @override
  String get dailyRewardTitle => 'RICOMPENSA GIORNALIERA';

  @override
  String get dailyRewardClaimBody =>
      'Riscatta il regalo di oggi. Torna ogni giorno per far crescere la ricompensa.';

  @override
  String get dailyRewardClaimedBody => 'Hai già riscattato oggi. Torna domani.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Serie: $streakString giorni';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'G$dayString';
  }

  @override
  String get plusHint => '+suggerimento';

  @override
  String get claimDailyReward => 'Riscatta la ricompensa di oggi';

  @override
  String get comeAgainTomorrow => 'Torna domani';

  @override
  String get achievementsTitle => 'OBIETTIVI';

  @override
  String get achGreetingEmpty =>
      'Sei pronto. Completa il primo livello e i badge inizieranno ad accumularsi qui.';

  @override
  String get achGreetingFlow =>
      'Il tuo flusso è in fiamme — hai il ritmo del gioco.';

  @override
  String get achGreetingStars =>
      'La tua collezione di stelle brilla. Continua così, leggenda.';

  @override
  String get achGreetingVeteran =>
      'Buon ritmo. Il laboratorio segue il tuo tempo.';

  @override
  String get achGreetingProgress =>
      'Ottimi progressi. Ogni livello pulito ti rende più abile.';

  @override
  String get achGreetingStarter =>
      'Ottimo inizio. Ancora qualche livello e arriveranno i badge.';

  @override
  String get statLevel => 'Livello';

  @override
  String get statStars => 'Stelle';

  @override
  String get statCoins => 'Monete';

  @override
  String get statFlow => 'Flusso';

  @override
  String get statUnlocked => 'Sbloccato';

  @override
  String get achievementLocked => 'Bloccato';

  @override
  String get achievementPerfectSort => 'Ordinamento perfetto';

  @override
  String get achievementPerfectSortDesc =>
      'Completa entro il Par senza assistenza';

  @override
  String get achievementUnderPar => 'Sotto il Par';

  @override
  String get achievementUnderParDesc => 'Non superare le mosse obiettivo';

  @override
  String get achievementNoUndo => 'Senza annulla';

  @override
  String get achievementNoUndoDesc => 'Completa senza usare annulla';

  @override
  String get achievementNoHint => 'Senza suggerimenti';

  @override
  String get achievementNoHintDesc => 'Risolvi senza suggerimenti';

  @override
  String get achievementFlowMaster => 'Maestro del flusso';

  @override
  String get achievementFlowMasterDesc => 'Raggiungi Flusso x5 in un livello';

  @override
  String get achievementNewRecord => 'Nuovo record';

  @override
  String get achievementNewRecordDesc => 'Batti il tuo miglior conteggio mosse';

  @override
  String get achievementFirstTry => 'Primo tentativo';

  @override
  String get achievementFirstTryDesc => 'Completa senza riavviare';

  @override
  String get achievementNoExtraTube => 'Senza tubo extra';

  @override
  String get achievementNoExtraTubeDesc => 'Completa senza aggiungere un tubo';

  @override
  String get undo => 'Annulla';

  @override
  String get restart => 'Riavvia';

  @override
  String get hint => 'Suggerimento';

  @override
  String get addTube => 'Aggiungi tubo';

  @override
  String get perfect => 'PERFETTO!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Livello $levelString completato';
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

    return '$movesString mosse  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NUOVO RECORD • OBIETTIVI';

  @override
  String get achievementsHeader => 'OBIETTIVI';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Penalità suggerimento: -$amountString monete';
  }

  @override
  String get doubleReward => 'DOPPIA RICOMPENSA';

  @override
  String get goToLevels => 'LIVELLI';

  @override
  String get continueNext => 'CONTINUA';

  @override
  String get backToLevelSelect => 'Torna alla selezione livelli';

  @override
  String get bestLabel => 'Miglior';

  @override
  String get flowCombo => 'Combo flusso';

  @override
  String get extraTube => 'Tubo extra';

  @override
  String get fullReward => 'Ricompensa piena';

  @override
  String get halfReward => 'Metà ricompensa';

  @override
  String get quarterReward => 'Quarto di ricompensa';

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
  String get newRule => 'NUOVA REGOLA';

  @override
  String get gotItStart => 'CAPITO, INIZIA';

  @override
  String get firstTimeTipOnly => 'Mostrato solo la prima volta';

  @override
  String get mechanicBasicsTitle => 'COME GIOCARE';

  @override
  String get mechanicBasicsHeadline => 'Scegli i tubi, versa il liquido';

  @override
  String get mechanicBasicsBody =>
      'Tocca un tubo per selezionare il colore in cima. Poi tocca un tubo destinazione — i colori uguali si impilano o versa in un tubo vuoto.';

  @override
  String get mechanicBasicsTip =>
      'Obiettivo: ogni tubo pieno diventa un solo colore. I tubi vuoti sono aiuti.';

  @override
  String get mechanicBasicsCaption => 'Seleziona → Versa → Ordina';

  @override
  String get mechanicHiddenTitle => 'TUBO NASCOSTO';

  @override
  String get mechanicHiddenHeadline => 'Solo il colore in cima è visibile';

  @override
  String get mechanicHiddenBody =>
      'In questo tubo vedi solo il colore in cima. Gli strati sotto restano offuscati finché quello sopra non si svuota.';

  @override
  String get mechanicHiddenTip =>
      'Non versare alla cieca — svuota prima in cima, rivela sotto, poi decidi.';

  @override
  String get mechanicHiddenCaption => 'Sopra visibile • sotto offuscato';

  @override
  String get mechanicMixTitle => 'MISCELA COLORI';

  @override
  String get mechanicMixHeadline => 'Due colori si combinano in uno nuovo';

  @override
  String get mechanicMixBody =>
      'Versa certi colori l\'uno sull\'altro per miscelare uno nuovo. Segui le equazioni mostrate sopra.';

  @override
  String get mechanicMixTip =>
      'Le quantità devono corrispondere e la destinazione deve avere spazio libero.';

  @override
  String get mechanicMixCaption => 'Rosso + Giallo = Arancione';

  @override
  String get mechanicFrozenTitle => 'TUBO GELATO';

  @override
  String get mechanicFrozenHeadline => 'Intoccabile per un po\'';

  @override
  String get mechanicFrozenBody =>
      'Non puoi versare in o fuori da un tubo ghiacciato. Dopo abbastanza mosse, il ghiaccio si scioglie.';

  @override
  String get mechanicFrozenTip =>
      'Apri un percorso con altri tubi; usalo appena il ghiaccio si scioglie.';

  @override
  String get mechanicFrozenCaption => 'Aspetta mosse → ghiaccio si scioglie';

  @override
  String get mechanicLockedTitle => 'TUBO BLOCCATO';

  @override
  String get mechanicLockedHeadline => 'Completa prima un altro tubo';

  @override
  String get mechanicLockedBody =>
      'Un tubo bloccato resta chiuso finché non completi un certo numero di tubi.';

  @override
  String get mechanicLockedTip =>
      'Completa prima i tubi facili, poi usa lo spazio bloccato.';

  @override
  String get mechanicLockedCaption => 'Completa → sblocca';

  @override
  String get mechanicHeatedTitle => 'TUBO RISCALDATORE';

  @override
  String get mechanicHeatedHeadline => 'Vaporizza liquido di scarto';

  @override
  String get mechanicHeatedBody =>
      'Il liquido versato nel riscaldatore scompare. Le cariche di calore sono limitate — di solito per colori di scarto.';

  @override
  String get mechanicHeatedTip =>
      'Senza calore non puoi versare lì. Elimina gli scarti presto.';

  @override
  String get mechanicHeatedCaption => 'Scarto → vapore';

  @override
  String get mechanicValveTitle => 'VALVOLA A SENSO UNICO';

  @override
  String get mechanicValveHeadline => 'Versa solo dentro';

  @override
  String get mechanicValveBody =>
      'Puoi versare in un tubo valvola ma non tirare fuori liquido. Funziona come deposito permanente.';

  @override
  String get mechanicValveTip =>
      'Un colore sbagliato può intrappolarti. Riempi le valvole con cura.';

  @override
  String get mechanicValveCaption => 'Solo entrata';

  @override
  String get mechanicPortalTitle => 'COPPIA DI PORTALI';

  @override
  String get mechanicPortalHeadline => 'Entra da uno, esci dall\'altro';

  @override
  String get mechanicPortalBody =>
      'Versa in un portale e il liquido appare nel gemello. I due tubi sono collegati.';

  @override
  String get mechanicPortalTip =>
      'Punta a un portale — il riempimento avviene dall\'altra parte.';

  @override
  String get mechanicPortalCaption => 'A entra → B esce';

  @override
  String get mechanicBombTitle => 'TUBO BOMBA';

  @override
  String get mechanicBombHeadline => 'Completa prima del timer';

  @override
  String get mechanicBombBody =>
      'Il tubo segnato ha un conto alla rovescia. Riempilo con un colore prima che arrivi a zero o fallisci il livello.';

  @override
  String get mechanicBombTip =>
      'Metti al sicuro prima il tubo bomba, poi ordina il resto.';

  @override
  String get mechanicBombCaption => 'Riempi prima della fine del conto';

  @override
  String get mechanicNarrowTitle => 'TUBO STRETTO';

  @override
  String get mechanicNarrowHeadline => 'Buffer capacità 2';

  @override
  String get mechanicNarrowBody =>
      'Questo livello ha un tubo ausiliario corto che contiene al massimo 2 unità. Usalo per manovre strette.';

  @override
  String get mechanicNarrowTip =>
      'Deve essere vuoto per completare. Avere 2 unità non conta come completo — svuotalo di nuovo.';

  @override
  String get mechanicNarrowCaption => 'Capacità 2 • vuoto per finire';

  @override
  String get mechanicMovingTitle => 'LAYOUT MOBILE';

  @override
  String get mechanicMovingHeadline => 'I tubi cambiano posto';

  @override
  String get mechanicMovingBody =>
      'Ogni poche mosse la tavola si sposta e l\'ordine dei tubi cambia. Stessi tubi — nuove posizioni.';

  @override
  String get mechanicMovingTip => 'Segui i tubi per id e colori.';

  @override
  String get mechanicMovingCaption => 'Cambia ogni 3 mosse';

  @override
  String get mechanicBossTitle => 'ESPERIMENTO BOSS';

  @override
  String get mechanicBossHeadline => 'Regole più dure';

  @override
  String get mechanicBossBody =>
      'I livelli Boss hanno un limite di mosse e possono combinare diverse regole speciali. Gioca con un piano.';

  @override
  String get mechanicBossTip =>
      'Resta vicino al Par; evita annulla e versamenti sprecati.';

  @override
  String get mechanicBossCaption => 'Limite + regole speciali';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Livello $levelString';
  }

  @override
  String get movesLabel => 'Mosse';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Tentativi illimitati  •  Offline';
  }

  @override
  String get pauseTooltip => 'Pausa';

  @override
  String get resumeTooltip => 'Riprendi';

  @override
  String get settingsTooltip => 'Impostazioni';

  @override
  String get pausedTitle => 'GIOCO IN PAUSA';

  @override
  String get pausedBody =>
      'Timer e suoni del conto alla rovescia sono in pausa.';

  @override
  String get resumeCta => 'RIPRENDI';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'FACILE  •  RILASSATO';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString MOSSE';
  }

  @override
  String get hiddenLiquid => 'LIQUIDO NASCOSTO';

  @override
  String get frozenTube => 'TUBO GELATO';

  @override
  String get iceCleared => 'GHIACCIO SCiolto';

  @override
  String get lockedTube => 'TUBO BLOCCATO';

  @override
  String get lockOpened => 'SERRATURA APERTA';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BRUCIA SCARTO • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'TUBO CALORE • $remainingString';
  }

  @override
  String get portalPair => 'COPPIA DI PORTALI';

  @override
  String get oneWayValve => 'VALVOLA A SENSO UNICO';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'CAMBIA OGNI $movesString MOSSE';
  }

  @override
  String get narrowTubeCap2 => 'TUBO STRETTO • CAP 2';

  @override
  String get hiddenMix => 'MISCELA NASCOSTA';

  @override
  String get portalFlow => 'FLUSSO PORTALE!';

  @override
  String get tubesShifted => 'TUBI SPOSTATI!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA: $remainingString MOSSE!';
  }

  @override
  String get iceBroken => 'Ghiaccio rotto! Il tubo gelato è ora utilizzabile.';

  @override
  String get lockUnlocked => 'Serratura aperta! Un nuovo tubo è pronto.';

  @override
  String get tubeFrozenMsg =>
      'Questo tubo è congelato. Alcune mosse corrette lo scongeleranno.';

  @override
  String get tubeLockedMsg =>
      'Questo tubo è bloccato. Completa prima un altro colore.';

  @override
  String get valveOneWayMsg =>
      'La valvola dorata è a senso unico: puoi versare dentro, ma non uscire.';

  @override
  String get heatExhaustedMsg =>
      'Questo riscaldatore ha esaurito le cariche di combustione.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Monete insufficienti ($costString).';
  }

  @override
  String get adFailed => 'Impossibile completare l\'annuncio.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString monete • $title riaperto';
  }

  @override
  String reopenAd(String title) {
    return 'Aperto con annuncio • $title';
  }

  @override
  String get tipQuotaEmpty => 'Hai finito i suggerimenti per questo livello.';

  @override
  String get rewardsNotReady => 'Il sistema ricompense non è pronto.';

  @override
  String get freeHintUsed => 'Suggerimento gratis usato.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Suggerimento: -$costString monete';
  }

  @override
  String get noHintAvailable => 'Nessun suggerimento utile al momento.';

  @override
  String get assistHint => 'suggerimento';

  @override
  String get assistUndo => 'annulla';

  @override
  String get freeHintEarned => '1 suggerimento gratis ottenuto.';

  @override
  String get freeUndoEarned => '1 annulla gratis ottenuto.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString credito • tentativo fallito (min $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limite debito ($floorString). Guarda un annuncio per riprovare.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString credito • riavvia';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Monete insufficienti ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Guarda un annuncio per guadagnare 1 $label gratis.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limite debito ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Sei al pavimento del debito. Guarda un annuncio per riprovare.';

  @override
  String get tipUnlockPaidBody =>
      'Hai visto questa regola gratis una volta.\nRileggerla costa monete.';

  @override
  String get tipUnlockAdBody =>
      'Monete insufficienti.\nGuarda un annuncio per aprire questo consiglio gratis.';

  @override
  String get yourBalance => 'Saldo: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Paga $costString';
  }

  @override
  String get timeUp => 'TEMPO SCADUTO';

  @override
  String get bombExploded => 'BOMBA ESPLOSA!';

  @override
  String get moveLimitReached => 'LIMITE MOSSE RAGGIUNTO';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Tentativo fallito: -$amountString credito (debito min $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Puoi disattivare la pressione temporale in modalità Facile.';

  @override
  String get bombFailHint =>
      'Riempi il tubo segnato con un colore prima che finisca il conto rosso.';

  @override
  String get bossFailHint =>
      'L\'esperimento Boss ha superato il limite di mosse. Pianifica miscele e tubi vuoti con cura.';

  @override
  String get debtLimitRetryHint =>
      'Sei al limite del debito — guarda un annuncio per riprovare.';

  @override
  String get retryWithAd => 'GUARDA ANNUNCIO • RIPROVA';

  @override
  String get retryAgain => 'RIPROVA';

  @override
  String get vaporized => 'VAPORIZZATO!';

  @override
  String colorClearedBonus(String color) {
    return '$color ELIMINATO  •  +4 S';
  }

  @override
  String get newColorFormed => 'NUOVO COLORE FORMATO!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => 'FLUSSO LEGGENDARIO!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLUSSO x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Flusso leggendario';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Flusso x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Tubo $id, $unitsString unità riempite';
  }

  @override
  String get colorRed => 'Rosso';

  @override
  String get colorBlue => 'Blu';

  @override
  String get colorPurple => 'Viola';

  @override
  String get colorYellow => 'Giallo';

  @override
  String get colorGreen => 'Verde';

  @override
  String get colorOrange => 'Arancione';

  @override
  String get colorPink => 'Rosa';

  @override
  String get colorCyan => 'Ciano';

  @override
  String get colorLime => 'Lime';

  @override
  String get colorBrown => 'Marrone';

  @override
  String get skipLevelOfferBody =>
      'Questo livello è tosto. Guarda un annuncio per sbloccare il successivo.';

  @override
  String get skipLevelCta => 'GUARDA AD • SALTA';

  @override
  String get skipLevelNote =>
      'Potrai tornare a finire questo livello più tardi.';

  @override
  String get skipLevelUnlocked => 'Livello successivo sbloccato!';

  @override
  String get developerModeTitle => 'Modalità sviluppatore';

  @override
  String get developerModePasswordHint => 'Password';

  @override
  String get developerModeUnlock => 'Sblocca';

  @override
  String get developerModeEnabled => 'Tutti i livelli sbloccati per i test.';

  @override
  String get developerModeWrongPassword => 'Password errata';

  @override
  String get developerModeActive => 'Modalità sviluppatore attiva';

  @override
  String get developerModeDisable => 'Disattiva modalità sviluppatore';
}
