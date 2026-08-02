// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Triez les couleurs. Videz votre esprit.';

  @override
  String get back => 'Retour';

  @override
  String get cancel => 'Annuler';

  @override
  String get play => 'JOUER';

  @override
  String get settings => 'Paramètres';

  @override
  String get home => 'Accueil';

  @override
  String get levels => 'Niveaux';

  @override
  String get collection => 'Collection';

  @override
  String get achievements => 'Succès';

  @override
  String get continueLabel => 'Continuer';

  @override
  String get pause => 'Pause';

  @override
  String get close => 'Fermer';

  @override
  String get free => 'Gratuit';

  @override
  String get coin => 'Pièce';

  @override
  String get coins => 'Pièces';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Coups';

  @override
  String get best => 'Meilleur';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Verrouillé';

  @override
  String get ad => 'PUB';

  @override
  String get watchAd => 'Voir une pub';

  @override
  String get claiming => 'Réclamation...';

  @override
  String get homeTagline => 'Triez malin, mélangez les couleurs !';

  @override
  String get progressAndAchievements => 'PROGRESSION ET SUCCÈS';

  @override
  String get progressTapHint => 'Appuyez : stats et badges';

  @override
  String get dailyReward => 'Récompense quotidienne';

  @override
  String get rewardReady => 'Récompense prête';

  @override
  String get comeTomorrow => 'Revenez demain';

  @override
  String get collectionSubtitle => 'Parcourir les thèmes';

  @override
  String get premiumThemes => 'THÈMES PREMIUM';

  @override
  String get premiumThemesBody =>
      'Les thèmes Classique, Galaxie, Océan, Néon et Âge d\'or se débloquent ici.';

  @override
  String get playCta => 'JOUER';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString pièces$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString indice gratuit';
  }

  @override
  String get levelMapTitle => 'CARTE DES NIVEAUX';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString niveaux terminés';
  }

  @override
  String get newExperimentsBanner =>
      'NOUVEAUX EXPÉRIENCES\nPORTAIL • BOMBE • VALVE • RÉACTEUR';

  @override
  String get settingsTitle => 'PARAMÈTRES';

  @override
  String get settingsSubtitleAudio => 'Contrôles son et vibrations';

  @override
  String get settingsSubtitleVisual => 'Couleurs, motifs et animations';

  @override
  String get settingsSubtitleGeneral => 'Difficulté et préférences générales';

  @override
  String get sectionAudioFeedback => 'SON ET RETOUR';

  @override
  String get soundEffects => 'Effets sonores';

  @override
  String get soundEffectsSubtitle => 'Sons de sélection, versement et succès';

  @override
  String get backgroundMusic => 'Musique de fond';

  @override
  String get backgroundMusicSubtitle => 'Musique ambiante cosmique et calme';

  @override
  String get haptics => 'Vibrations';

  @override
  String get hapticsSubtitle => 'Retour léger au toucher';

  @override
  String get sectionVisual => 'PRÉFÉRENCES VISUELLES';

  @override
  String get neonPalette => 'Palette liquide néon';

  @override
  String get neonPaletteSubtitle => 'Couleurs néon vives utilisées dans le jeu';

  @override
  String get colorAccessibility => 'Accessibilité des couleurs';

  @override
  String get colorAccessibilitySubtitle =>
      'Ajoute des motifs subtils aux liquides';

  @override
  String get reducedAnimations => 'Animations réduites';

  @override
  String get reducedAnimationsSubtitle =>
      'Accélère les mouvements de versement';

  @override
  String get sectionDifficulty => 'DIFFICULTÉ ET PRESSION TEMPORELLE';

  @override
  String get offlineProgress => 'Progression hors ligne';

  @override
  String get offlineProgressBody =>
      'Vos niveaux et paramètres sont sauvegardés en toute sécurité sur cet appareil.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Audio';

  @override
  String get tabVisual => 'Visuel';

  @override
  String get tabGeneral => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get languageSubtitle => 'Choisir la langue de l\'app';

  @override
  String get languageSystem => 'Langue du système';

  @override
  String get languageSystemSubtitle =>
      'Utiliser la langue du téléphone ou de la tablette';

  @override
  String get difficultyEasy => 'Facile';

  @override
  String get difficultyNormal => 'Normal';

  @override
  String get difficultyHard => 'Difficile';

  @override
  String get difficultyEasyDesc =>
      'Pas de pression temporelle • moins de pièces • plus de pubs interstitielles';

  @override
  String get difficultyNormalDesc => 'Chrono modéré, pression légère';

  @override
  String get difficultyHardDesc => 'Chrono très court, -5 s sur les erreurs';

  @override
  String get dailyRewardTitle => 'RÉCOMPENSE QUOTIDIENNE';

  @override
  String get dailyRewardClaimBody =>
      'Réclamez le cadeau du jour. Revenez chaque jour pour augmenter la récompense.';

  @override
  String get dailyRewardClaimedBody =>
      'Vous avez déjà réclamé aujourd\'hui. Revenez demain.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Série : $streakString jours';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'J$dayString';
  }

  @override
  String get plusHint => '+indice';

  @override
  String get claimDailyReward => 'Réclamer la récompense du jour';

  @override
  String get comeAgainTomorrow => 'Revenez demain';

  @override
  String get achievementsTitle => 'SUCCÈS';

  @override
  String get achGreetingEmpty =>
      'Vous êtes prêt. Terminez votre premier niveau et les badges s\'accumuleront ici.';

  @override
  String get achGreetingFlow =>
      'Votre flux est en feu — vous avez le rythme du jeu.';

  @override
  String get achGreetingStars =>
      'Votre collection d\'étoiles brille. Continuez, légende.';

  @override
  String get achGreetingVeteran => 'Bon rythme. Le labo suit votre tempo.';

  @override
  String get achGreetingProgress =>
      'Solide progression. Chaque niveau propre vous rend plus affûté.';

  @override
  String get achGreetingStarter =>
      'Bon départ. Encore quelques niveaux et les badges arriveront.';

  @override
  String get statLevel => 'Niveau';

  @override
  String get statStars => 'Étoiles';

  @override
  String get statCoins => 'Pièces';

  @override
  String get statFlow => 'Flux';

  @override
  String get statUnlocked => 'Débloqué';

  @override
  String get achievementLocked => 'Verrouillé';

  @override
  String get achievementPerfectSort => 'Tri parfait';

  @override
  String get achievementPerfectSortDesc =>
      'Terminez dans le Par sans assistance';

  @override
  String get achievementUnderPar => 'Sous le Par';

  @override
  String get achievementUnderParDesc =>
      'Ne dépassez pas le nombre de coups cible';

  @override
  String get achievementNoUndo => 'Sans annuler';

  @override
  String get achievementNoUndoDesc => 'Terminez sans utiliser annuler';

  @override
  String get achievementNoHint => 'Sans indices';

  @override
  String get achievementNoHintDesc => 'Résolvez sans utiliser d\'indices';

  @override
  String get achievementFlowMaster => 'Maître du flux';

  @override
  String get achievementFlowMasterDesc => 'Atteignez Flux x5 dans un niveau';

  @override
  String get achievementNewRecord => 'Nouveau record';

  @override
  String get achievementNewRecordDesc =>
      'Battez votre meilleur nombre de coups';

  @override
  String get achievementFirstTry => 'Premier essai';

  @override
  String get achievementFirstTryDesc => 'Terminez sans redémarrer';

  @override
  String get achievementNoExtraTube => 'Sans tube extra';

  @override
  String get achievementNoExtraTubeDesc => 'Terminez sans ajouter de tube';

  @override
  String get undo => 'Annuler';

  @override
  String get restart => 'Recommencer';

  @override
  String get hint => 'Indice';

  @override
  String get addTube => 'Ajouter un tube';

  @override
  String get perfect => 'PARFAIT !';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Niveau $levelString terminé';
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

    return '$movesString coups  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NOUVEAU RECORD • SUCCÈS';

  @override
  String get achievementsHeader => 'SUCCÈS';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Pénalité d\'indice : -$amountString pièces';
  }

  @override
  String get doubleReward => 'DOUBLE RÉCOMPENSE';

  @override
  String get goToLevels => 'NIVEAUX';

  @override
  String get continueNext => 'CONTINUER';

  @override
  String get backToLevelSelect => 'Retour à la sélection de niveaux';

  @override
  String get bestLabel => 'Meilleur';

  @override
  String get flowCombo => 'Combo de flux';

  @override
  String get extraTube => 'Tube extra';

  @override
  String get fullReward => 'Récompense complète';

  @override
  String get halfReward => 'Demi-récompense';

  @override
  String get quarterReward => 'Quart de récompense';

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
  String get newRule => 'NOUVELLE RÈGLE';

  @override
  String get gotItStart => 'COMPRIS, COMMENCER';

  @override
  String get firstTimeTipOnly => 'Affiché uniquement la première fois';

  @override
  String get mechanicBasicsTitle => 'COMMENT JOUER';

  @override
  String get mechanicBasicsHeadline =>
      'Choisissez des tubes, versez le liquide';

  @override
  String get mechanicBasicsBody =>
      'Touchez un tube pour sélectionner sa couleur du haut. Puis touchez un tube cible — les couleurs identiques s\'empilent ou versez dans un tube vide.';

  @override
  String get mechanicBasicsTip =>
      'Objectif : chaque tube rempli devient d\'une seule couleur. Les tubes vides sont des aides.';

  @override
  String get mechanicBasicsCaption => 'Sélectionner → Verser → Trier';

  @override
  String get mechanicHiddenTitle => 'TUBE CACHÉ';

  @override
  String get mechanicHiddenHeadline => 'Seule la couleur du haut est visible';

  @override
  String get mechanicHiddenBody =>
      'Dans ce tube vous ne voyez que la couleur du haut. Les couches du dessous restent floues jusqu\'à ce que le haut soit vidé.';

  @override
  String get mechanicHiddenTip =>
      'Ne versez pas à l\'aveugle — videz le haut d\'abord, révélez le bas, puis décidez.';

  @override
  String get mechanicHiddenCaption => 'Haut visible • bas flou';

  @override
  String get mechanicMixTitle => 'MÉLANGE DE COULEURS';

  @override
  String get mechanicMixHeadline =>
      'Deux couleurs se combinent en une nouvelle';

  @override
  String get mechanicMixBody =>
      'Versez certaines couleurs l\'une sur l\'autre pour en mélanger une nouvelle. Suivez les équations affichées en haut.';

  @override
  String get mechanicMixTip =>
      'Les quantités doivent correspondre et la cible doit avoir de la place libre.';

  @override
  String get mechanicMixCaption => 'Rouge + Jaune = Orange';

  @override
  String get mechanicFrozenTitle => 'TUBE GELÉ';

  @override
  String get mechanicFrozenHeadline => 'Intouchable pendant un moment';

  @override
  String get mechanicFrozenBody =>
      'Vous ne pouvez ni verser dans ni sortir d\'un tube glacé. Après assez de coups, la glace fond.';

  @override
  String get mechanicFrozenTip =>
      'Ouvrez un chemin avec d\'autres tubes ; utilisez-le dès que la glace fond.';

  @override
  String get mechanicFrozenCaption => 'Attendre coups → glace fond';

  @override
  String get mechanicLockedTitle => 'TUBE VERROUILLÉ';

  @override
  String get mechanicLockedHeadline => 'Terminez un autre tube d\'abord';

  @override
  String get mechanicLockedBody =>
      'Un tube verrouillé reste fermé jusqu\'à ce que vous terminiez un certain nombre de tubes.';

  @override
  String get mechanicLockedTip =>
      'Terminez d\'abord les tubes faciles, puis utilisez l\'espace verrouillé.';

  @override
  String get mechanicLockedCaption => 'Terminer → déverrouiller';

  @override
  String get mechanicHeatedTitle => 'TUBE CHAUFFANT';

  @override
  String get mechanicHeatedHeadline => 'Vaporisez le liquide inutile';

  @override
  String get mechanicHeatedBody =>
      'Le liquide versé dans le chauffant disparaît. Les charges de chaleur sont limitées — généralement pour les couleurs inutiles.';

  @override
  String get mechanicHeatedTip =>
      'Sans chaleur vous ne pouvez plus verser là. Éliminez les déchets tôt.';

  @override
  String get mechanicHeatedCaption => 'Déchet → vapeur';

  @override
  String get mechanicValveTitle => 'VALVE UNIDIRECTIONNELLE';

  @override
  String get mechanicValveHeadline => 'Verse uniquement vers l\'intérieur';

  @override
  String get mechanicValveBody =>
      'Vous pouvez verser dans un tube valve mais pas en retirer. Il sert de stockage permanent.';

  @override
  String get mechanicValveTip =>
      'Une mauvaise couleur peut vous piéger. Remplissez les valves avec soin.';

  @override
  String get mechanicValveCaption => 'Entrée seulement';

  @override
  String get mechanicPortalTitle => 'PAIRE DE PORTAILS';

  @override
  String get mechanicPortalHeadline => 'Entrez par l\'un, sortez par l\'autre';

  @override
  String get mechanicPortalBody =>
      'Versez dans un portail et le liquide apparaît dans son jumeau. Les deux tubes sont liés.';

  @override
  String get mechanicPortalTip =>
      'Visez un portail — le remplissage se fait de l\'autre côté.';

  @override
  String get mechanicPortalCaption => 'A entre → B sort';

  @override
  String get mechanicBombTitle => 'TUBE BOMBE';

  @override
  String get mechanicBombHeadline => 'Terminez avant le chrono';

  @override
  String get mechanicBombBody =>
      'Le tube marqué a un compte à rebours. Remplissez-le d\'une seule couleur avant zéro ou le niveau échoue.';

  @override
  String get mechanicBombTip =>
      'Sécurisez d\'abord le tube bombe, puis triez le reste.';

  @override
  String get mechanicBombCaption => 'Remplir avant la fin du chrono';

  @override
  String get mechanicNarrowTitle => 'TUBE ÉTROIT';

  @override
  String get mechanicNarrowHeadline => 'Tampon capacité 2';

  @override
  String get mechanicNarrowBody =>
      'Ce niveau a un petit tube auxiliaire qui contient au plus 2 unités. Utilisez-le pour des manœuvres serrées.';

  @override
  String get mechanicNarrowTip =>
      'Il doit être vide pour terminer. Avoir 2 unités ne compte pas comme terminé — videz-le à nouveau.';

  @override
  String get mechanicNarrowCaption => 'Capacité 2 • vide pour terminer';

  @override
  String get mechanicMovingTitle => 'DISPOSITION MOBILE';

  @override
  String get mechanicMovingHeadline => 'Les tubes changent de place';

  @override
  String get mechanicMovingBody =>
      'Tous les quelques coups le plateau se décale et l\'ordre des tubes change. Mêmes tubes — nouvelles positions.';

  @override
  String get mechanicMovingTip => 'Suivez les tubes par id et couleurs.';

  @override
  String get mechanicMovingCaption => 'Change tous les 3 coups';

  @override
  String get mechanicBossTitle => 'EXPÉRIENCE BOSS';

  @override
  String get mechanicBossHeadline => 'Règles plus dures';

  @override
  String get mechanicBossBody =>
      'Les niveaux Boss ont une limite de coups et peuvent combiner plusieurs règles spéciales. Jouez avec un plan.';

  @override
  String get mechanicBossTip =>
      'Restez près du Par ; évitez les annulations et versements inutiles.';

  @override
  String get mechanicBossCaption => 'Limite + règles spéciales';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Niveau $levelString';
  }

  @override
  String get movesLabel => 'Coups';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Tentatives illimitées  •  Hors ligne';
  }

  @override
  String get pauseTooltip => 'Pause';

  @override
  String get resumeTooltip => 'Reprendre';

  @override
  String get settingsTooltip => 'Paramètres';

  @override
  String get pausedTitle => 'JEU EN PAUSE';

  @override
  String get pausedBody =>
      'Le chrono et les sons de compte à rebours sont en pause.';

  @override
  String get resumeCta => 'REPRENDRE';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'FACILE  •  DÉTENDU';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString COUPS';
  }

  @override
  String get hiddenLiquid => 'LIQUIDE CACHÉ';

  @override
  String get frozenTube => 'TUBE GELÉ';

  @override
  String get iceCleared => 'GLACE CASSÉE';

  @override
  String get lockedTube => 'TUBE VERROUILLÉ';

  @override
  String get lockOpened => 'SERRURE OUVERTE';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BRÛLER DÉCHET • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'TUBE CHALEUR • $remainingString';
  }

  @override
  String get portalPair => 'PAIRE DE PORTAILS';

  @override
  String get oneWayValve => 'VALVE UNIDIRECTIONNELLE';

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

    return 'CHANGE TOUS LES $movesString COUPS';
  }

  @override
  String get narrowTubeCap2 => 'TUBE ÉTROIT • CAP 2';

  @override
  String get hiddenMix => 'MÉLANGE CACHÉ';

  @override
  String get portalFlow => 'FLUX PORTAIL !';

  @override
  String get tubesShifted => 'TUBES DÉPLACÉS !';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBE : $remainingString COUPS !';
  }

  @override
  String get iceBroken => 'Glace brisée ! Le tube gelé est utilisable.';

  @override
  String get lockUnlocked => 'Serrure ouverte ! Un nouveau tube est prêt.';

  @override
  String get tubeFrozenMsg =>
      'Ce tube est gelé. Quelques bons coups le dégèleront.';

  @override
  String get tubeLockedMsg =>
      'Ce tube est verrouillé. Terminez une autre couleur d\'abord.';

  @override
  String get valveOneWayMsg =>
      'La valve dorée est unidirectionnelle : vous pouvez verser dedans, mais pas en sortir.';

  @override
  String get heatExhaustedMsg =>
      'Ce chauffant n\'a plus de charges de brûlage.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Pas assez de pièces ($costString).';
  }

  @override
  String get adFailed => 'La pub n\'a pas pu être terminée.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString pièces • $title rouvert';
  }

  @override
  String reopenAd(String title) {
    return 'Ouvert avec pub • $title';
  }

  @override
  String get tipQuotaEmpty => 'Vous n\'avez plus d\'indices pour ce niveau.';

  @override
  String get rewardsNotReady => 'Le système de récompenses n\'est pas prêt.';

  @override
  String get freeHintUsed => 'Indice gratuit utilisé.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Indice : -$costString pièces';
  }

  @override
  String get noHintAvailable => 'Aucun indice utile pour l\'instant.';

  @override
  String get assistHint => 'indice';

  @override
  String get assistUndo => 'annuler';

  @override
  String get freeHintEarned => '1 indice gratuit gagné.';

  @override
  String get freeUndoEarned => '1 annulation gratuite gagnée.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString crédit • échec (min $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limite de dette ($floorString). Regardez une pub pour réessayer.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString crédit • redémarrer';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Pas assez de pièces ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Regardez une pub pour gagner 1 $label gratuit.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limite de dette ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Vous êtes au plancher de dette. Regardez une pub pour réessayer.';

  @override
  String get tipUnlockPaidBody =>
      'Vous avez vu cette règle gratuitement une fois.\nLa relire coûte des pièces.';

  @override
  String get tipUnlockAdBody =>
      'Pas assez de pièces.\nRegardez une pub pour ouvrir ce conseil gratuitement.';

  @override
  String get yourBalance => 'Solde : ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Payer $costString';
  }

  @override
  String get timeUp => 'TEMPS ÉCOULÉ';

  @override
  String get bombExploded => 'BOMBE EXPLOSÉE !';

  @override
  String get moveLimitReached => 'LIMITE DE COUPS ATTEINTE';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Échec : -$amountString crédit (dette min $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Vous pouvez désactiver la pression temporelle en mode Facile.';

  @override
  String get bombFailHint =>
      'Remplissez le tube marqué d\'une seule couleur avant la fin du compte rouge.';

  @override
  String get bossFailHint =>
      'L\'expérience Boss a dépassé la limite de coups. Planifiez les mélanges et tubes vides avec soin.';

  @override
  String get debtLimitRetryHint =>
      'Vous êtes à la limite de dette — regardez une pub pour réessayer.';

  @override
  String get retryWithAd => 'VOIR PUB • RÉESSAYER';

  @override
  String get retryAgain => 'RÉESSAYER';

  @override
  String get vaporized => 'VAPORISÉ !';

  @override
  String colorClearedBonus(String color) {
    return '$color ÉLIMINÉ  •  +4 S';
  }

  @override
  String get newColorFormed => 'NOUVELLE COULEUR FORMÉE !';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => 'FLUX LÉGENDAIRE !';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLUX x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Flux légendaire';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Flux x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Tube $id, $unitsString unités remplies';
  }

  @override
  String get colorRed => 'Rouge';

  @override
  String get colorBlue => 'Bleu';

  @override
  String get colorPurple => 'Violet';

  @override
  String get colorYellow => 'Jaune';

  @override
  String get colorGreen => 'Vert';

  @override
  String get colorOrange => 'Orange';

  @override
  String get colorPink => 'Rose';

  @override
  String get colorCyan => 'Cyan';

  @override
  String get colorLime => 'Citron vert';

  @override
  String get colorBrown => 'Marron';

  @override
  String get skipLevelOfferBody =>
      'Ce niveau est dur. Regardez une pub pour débloquer le suivant.';

  @override
  String get skipLevelCta => 'VOIR PUB • PASSER';

  @override
  String get skipLevelNote => 'Vous pourrez revenir finir ce niveau plus tard.';

  @override
  String get skipLevelUnlocked => 'Niveau suivant débloqué !';

  @override
  String get developerModeTitle => 'Mode développeur';

  @override
  String get developerModePasswordHint => 'Mot de passe';

  @override
  String get developerModeUnlock => 'Déverrouiller';

  @override
  String get developerModeEnabled =>
      'Tous les niveaux débloqués pour les tests.';

  @override
  String get developerModeWrongPassword => 'Mot de passe incorrect';

  @override
  String get developerModeActive => 'Mode développeur actif';

  @override
  String get developerModeDisable => 'Désactiver le mode développeur';
}
