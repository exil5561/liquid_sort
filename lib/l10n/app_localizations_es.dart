// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Ordena los colores. Despeja tu mente.';

  @override
  String get back => 'Atrás';

  @override
  String get cancel => 'Cancelar';

  @override
  String get play => 'JUGAR';

  @override
  String get settings => 'Ajustes';

  @override
  String get home => 'Inicio';

  @override
  String get levels => 'Niveles';

  @override
  String get collection => 'Colección';

  @override
  String get achievements => 'Logros';

  @override
  String get continueLabel => 'Continuar';

  @override
  String get pause => 'Pausa';

  @override
  String get close => 'Cerrar';

  @override
  String get free => 'Gratis';

  @override
  String get coin => 'Moneda';

  @override
  String get coins => 'Monedas';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Movimientos';

  @override
  String get best => 'Mejor';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Bloqueado';

  @override
  String get ad => 'ANUNCIO';

  @override
  String get watchAd => 'Ver anuncio';

  @override
  String get claiming => 'Reclamando...';

  @override
  String get homeTagline => '¡Ordena con inteligencia, mezcla colores!';

  @override
  String get progressAndAchievements => 'PROGRESO Y LOGROS';

  @override
  String get progressTapHint => 'Toca: estadísticas e insignias';

  @override
  String get dailyReward => 'Recompensa diaria';

  @override
  String get rewardReady => 'Recompensa lista';

  @override
  String get comeTomorrow => 'Vuelve mañana';

  @override
  String get collectionSubtitle => 'Explora temas';

  @override
  String get premiumThemes => 'TEMAS PREMIUM';

  @override
  String get premiumThemesBody =>
      'Los temas Clásico, Galaxia, Océano, Neón y Edad Dorada se desbloquean aquí.';

  @override
  String get playCta => 'JUGAR';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString monedas$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString pista gratis';
  }

  @override
  String get levelMapTitle => 'MAPA DE NIVELES';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString niveles completados';
  }

  @override
  String get newExperimentsBanner =>
      'NUEVOS EXPERIMENTOS\nPORTAL • BOMBA • VÁLVULA • REACTOR';

  @override
  String get settingsTitle => 'AJUSTES';

  @override
  String get settingsSubtitleAudio => 'Controles de sonido y vibración';

  @override
  String get settingsSubtitleVisual => 'Colores, patrones y animaciones';

  @override
  String get settingsSubtitleGeneral => 'Dificultad y preferencias generales';

  @override
  String get sectionAudioFeedback => 'SONIDO Y RETROALIMENTACIÓN';

  @override
  String get soundEffects => 'Efectos de sonido';

  @override
  String get soundEffectsSubtitle => 'Sonidos de selección, vertido y éxito';

  @override
  String get backgroundMusic => 'Música de fondo';

  @override
  String get backgroundMusicSubtitle => 'Música ambiental cósmica y relajante';

  @override
  String get haptics => 'Vibración';

  @override
  String get hapticsSubtitle => 'Retroalimentación ligera al tocar';

  @override
  String get sectionVisual => 'PREFERENCIAS VISUALES';

  @override
  String get neonPalette => 'Paleta de líquido neón';

  @override
  String get neonPaletteSubtitle => 'Colores neón vivos usados en el juego';

  @override
  String get colorAccessibility => 'Accesibilidad de color';

  @override
  String get colorAccessibilitySubtitle =>
      'Añade patrones sutiles a los líquidos';

  @override
  String get reducedAnimations => 'Animaciones reducidas';

  @override
  String get reducedAnimationsSubtitle => 'Acelera los movimientos de vertido';

  @override
  String get sectionDifficulty => 'DIFICULTAD Y PRESIÓN DE TIEMPO';

  @override
  String get offlineProgress => 'Progreso sin conexión';

  @override
  String get offlineProgressBody =>
      'Tus niveles y ajustes se guardan de forma segura en este dispositivo.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Audio';

  @override
  String get tabVisual => 'Visual';

  @override
  String get tabGeneral => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languageSubtitle => 'Elige el idioma de la app';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get languageSystemSubtitle => 'Usar el idioma del teléfono o tablet';

  @override
  String get difficultyEasy => 'Fácil';

  @override
  String get difficultyNormal => 'Normal';

  @override
  String get difficultyHard => 'Difícil';

  @override
  String get difficultyEasyDesc =>
      'Sin presión de tiempo • menos monedas • más anuncios intersticiales';

  @override
  String get difficultyNormalDesc => 'Temporizador moderado, presión ligera';

  @override
  String get difficultyHardDesc => 'Temporizador muy corto, -5 s por errores';

  @override
  String get dailyRewardTitle => 'RECOMPENSA DIARIA';

  @override
  String get dailyRewardClaimBody =>
      'Reclama el regalo de hoy. Vuelve cada día para aumentar la recompensa.';

  @override
  String get dailyRewardClaimedBody => 'Ya reclamaste hoy. Vuelve mañana.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Racha: $streakString días';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'D$dayString';
  }

  @override
  String get plusHint => '+pista';

  @override
  String get claimDailyReward => 'Reclamar recompensa de hoy';

  @override
  String get comeAgainTomorrow => 'Vuelve mañana';

  @override
  String get achievementsTitle => 'LOGROS';

  @override
  String get achGreetingEmpty =>
      'Todo listo. Completa tu primer nivel y las insignias empezarán a acumularse aquí.';

  @override
  String get achGreetingFlow =>
      'Tu flujo arde — ya captaste el ritmo del juego.';

  @override
  String get achGreetingStars =>
      'Tu colección de estrellas brilla. Sigue así, leyenda.';

  @override
  String get achGreetingVeteran => 'Buen ritmo. El laboratorio va a tu tempo.';

  @override
  String get achGreetingProgress =>
      'Buen progreso. Cada nivel limpio te hace más hábil.';

  @override
  String get achGreetingStarter =>
      'Buen comienzo. Unos niveles más y llegarán las insignias.';

  @override
  String get statLevel => 'Nivel';

  @override
  String get statStars => 'Estrellas';

  @override
  String get statCoins => 'Monedas';

  @override
  String get statFlow => 'Flujo';

  @override
  String get statUnlocked => 'Desbloqueado';

  @override
  String get achievementLocked => 'Bloqueado';

  @override
  String get achievementPerfectSort => 'Orden perfecto';

  @override
  String get achievementPerfectSortDesc =>
      'Termina dentro del Par sin asistencia';

  @override
  String get achievementUnderPar => 'Bajo el Par';

  @override
  String get achievementUnderParDesc => 'No superes los movimientos objetivo';

  @override
  String get achievementNoUndo => 'Sin deshacer';

  @override
  String get achievementNoUndoDesc => 'Termina sin usar deshacer';

  @override
  String get achievementNoHint => 'Sin pistas';

  @override
  String get achievementNoHintDesc => 'Resuelve sin usar pistas';

  @override
  String get achievementFlowMaster => 'Maestro del flujo';

  @override
  String get achievementFlowMasterDesc => 'Alcanza Flujo x5 en un nivel';

  @override
  String get achievementNewRecord => 'Nuevo récord';

  @override
  String get achievementNewRecordDesc =>
      'Supera tu mejor número de movimientos';

  @override
  String get achievementFirstTry => 'Primer intento';

  @override
  String get achievementFirstTryDesc => 'Completa sin reiniciar';

  @override
  String get achievementNoExtraTube => 'Sin tubo extra';

  @override
  String get achievementNoExtraTubeDesc => 'Termina sin añadir un tubo';

  @override
  String get undo => 'Deshacer';

  @override
  String get restart => 'Reiniciar';

  @override
  String get hint => 'Pista';

  @override
  String get addTube => 'Añadir tubo';

  @override
  String get perfect => '¡PERFECTO!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Nivel $levelString completado';
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

    return '$movesString movimientos  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NUEVO RÉCORD • LOGROS';

  @override
  String get achievementsHeader => 'LOGROS';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Penalización por pista: -$amountString monedas';
  }

  @override
  String get doubleReward => 'DOBLE RECOMPENSA';

  @override
  String get goToLevels => 'NIVELES';

  @override
  String get continueNext => 'CONTINUAR';

  @override
  String get backToLevelSelect => 'Volver a selección de niveles';

  @override
  String get bestLabel => 'Mejor';

  @override
  String get flowCombo => 'Combo de flujo';

  @override
  String get extraTube => 'Tubo extra';

  @override
  String get fullReward => 'Recompensa completa';

  @override
  String get halfReward => 'Media recompensa';

  @override
  String get quarterReward => 'Cuarto de recompensa';

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
  String get newRule => 'NUEVA REGLA';

  @override
  String get gotItStart => 'ENTENDIDO, EMPEZAR';

  @override
  String get firstTimeTipOnly => 'Se muestra solo la primera vez';

  @override
  String get mechanicBasicsTitle => 'CÓMO JUGAR';

  @override
  String get mechanicBasicsHeadline => 'Elige tubos, vierte líquido';

  @override
  String get mechanicBasicsBody =>
      'Toca un tubo para seleccionar su color superior. Luego toca un tubo destino — los colores iguales se apilan o puedes verter en un tubo vacío.';

  @override
  String get mechanicBasicsTip =>
      'Objetivo: cada tubo lleno debe ser de un solo color. Los tubos vacíos son ayudas.';

  @override
  String get mechanicBasicsCaption => 'Seleccionar → Verter → Ordenar';

  @override
  String get mechanicHiddenTitle => 'TUBO OCULTO';

  @override
  String get mechanicHiddenHeadline => 'Solo se ve el color superior';

  @override
  String get mechanicHiddenBody =>
      'En este tubo solo ves el color de arriba. Las capas inferiores permanecen ocultas hasta que se vacíe la superior.';

  @override
  String get mechanicHiddenTip =>
      'No viertas a ciegas — limpia arriba primero, revela abajo y luego decide.';

  @override
  String get mechanicHiddenCaption => 'Arriba visible • abajo oculto';

  @override
  String get mechanicMixTitle => 'MEZCLA DE COLORES';

  @override
  String get mechanicMixHeadline => 'Dos colores se combinan en uno nuevo';

  @override
  String get mechanicMixBody =>
      'Vierte ciertos colores uno sobre otro para mezclar uno nuevo. Sigue las ecuaciones mostradas arriba.';

  @override
  String get mechanicMixTip =>
      'Las cantidades deben coincidir y el destino necesita espacio libre.';

  @override
  String get mechanicMixCaption => 'Rojo + Amarillo = Naranja';

  @override
  String get mechanicFrozenTitle => 'TUBO CONGELADO';

  @override
  String get mechanicFrozenHeadline => 'Intocable por un tiempo';

  @override
  String get mechanicFrozenBody =>
      'No puedes verter en ni sacar de un tubo helado. Tras suficientes movimientos, el hielo se derrite.';

  @override
  String get mechanicFrozenTip =>
      'Abre camino con otros tubos; úsalo en cuanto se derrita el hielo.';

  @override
  String get mechanicFrozenCaption => 'Espera movimientos → se derrite';

  @override
  String get mechanicLockedTitle => 'TUBO BLOQUEADO';

  @override
  String get mechanicLockedHeadline => 'Termina otro tubo primero';

  @override
  String get mechanicLockedBody =>
      'Un tubo bloqueado permanece cerrado hasta completar cierto número de tubos.';

  @override
  String get mechanicLockedTip =>
      'Termina los tubos fáciles primero, luego usa el espacio bloqueado.';

  @override
  String get mechanicLockedCaption => 'Completa → desbloquea';

  @override
  String get mechanicHeatedTitle => 'TUBO CALENTADOR';

  @override
  String get mechanicHeatedHeadline => 'Vaporiza líquido sobrante';

  @override
  String get mechanicHeatedBody =>
      'El líquido vertido en el calentador desaparece. Las cargas de calor son limitadas — normalmente para colores sobrantes.';

  @override
  String get mechanicHeatedTip =>
      'Sin calor no puedes verter ahí. Limpia los sobrantes pronto.';

  @override
  String get mechanicHeatedCaption => 'Sobrante → vapor';

  @override
  String get mechanicValveTitle => 'VÁLVULA UNIDIRECCIONAL';

  @override
  String get mechanicValveHeadline => 'Solo entra líquido';

  @override
  String get mechanicValveBody =>
      'Puedes verter en un tubo válvula pero no sacar líquido. Actúa como almacén permanente.';

  @override
  String get mechanicValveTip =>
      'Un color incorrecto puede atraparte. Llena las válvulas con cuidado.';

  @override
  String get mechanicValveCaption => 'Solo entrada';

  @override
  String get mechanicPortalTitle => 'PAR DE PORTALES';

  @override
  String get mechanicPortalHeadline => 'Entra por uno, sale por el otro';

  @override
  String get mechanicPortalBody =>
      'Vierte en un portal y el líquido aparece en su gemelo. Los dos tubos están vinculados.';

  @override
  String get mechanicPortalTip =>
      'Apunta a un portal — el llenado ocurre al otro lado.';

  @override
  String get mechanicPortalCaption => 'A entra → B sale';

  @override
  String get mechanicBombTitle => 'TUBO BOMBA';

  @override
  String get mechanicBombHeadline => 'Termina antes del temporizador';

  @override
  String get mechanicBombBody =>
      'El tubo marcado tiene una cuenta atrás. Llénalo con un solo color antes de que llegue a cero o fallarás el nivel.';

  @override
  String get mechanicBombTip =>
      'Asegura el tubo bomba primero, luego ordena el resto.';

  @override
  String get mechanicBombCaption => 'Llena antes de que acabe la cuenta';

  @override
  String get mechanicNarrowTitle => 'TUBO ESTRECHO';

  @override
  String get mechanicNarrowHeadline => 'Búfer de capacidad 2';

  @override
  String get mechanicNarrowBody =>
      'Este nivel tiene un tubo auxiliar corto que guarda como máximo 2 unidades. Úsalo para maniobras ajustadas.';

  @override
  String get mechanicNarrowTip =>
      'Debe estar vacío para terminar. Tener 2 unidades no cuenta como completo — vacíalo de nuevo.';

  @override
  String get mechanicNarrowCaption => 'Capacidad 2 • vacío para terminar';

  @override
  String get mechanicMovingTitle => 'DISEÑO MÓVIL';

  @override
  String get mechanicMovingHeadline => 'Los tubos cambian de lugar';

  @override
  String get mechanicMovingBody =>
      'Cada pocos movimientos el tablero se desplaza y cambia el orden de los tubos. Mismos tubos — nuevas posiciones.';

  @override
  String get mechanicMovingTip => 'Sigue los tubos por id y colores.';

  @override
  String get mechanicMovingCaption => 'Cambia cada 3 movimientos';

  @override
  String get mechanicBossTitle => 'EXPERIMENTO BOSS';

  @override
  String get mechanicBossHeadline => 'Reglas más duras';

  @override
  String get mechanicBossBody =>
      'Los niveles Boss tienen límite de movimientos y pueden combinar varias reglas especiales. Juega con un plan.';

  @override
  String get mechanicBossTip =>
      'Mantente cerca del Par; evita deshacer y vertidos desperdiciados.';

  @override
  String get mechanicBossCaption => 'Límite + reglas especiales';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Nivel $levelString';
  }

  @override
  String get movesLabel => 'Movimientos';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Reintentos ilimitados  •  Sin conexión';
  }

  @override
  String get pauseTooltip => 'Pausa';

  @override
  String get resumeTooltip => 'Reanudar';

  @override
  String get settingsTooltip => 'Ajustes';

  @override
  String get pausedTitle => 'JUEGO EN PAUSA';

  @override
  String get pausedBody =>
      'El temporizador y los sonidos de cuenta atrás están en pausa.';

  @override
  String get resumeCta => 'REANUDAR';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'FÁCIL  •  RELAJADO';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString MOVIMIENTOS';
  }

  @override
  String get hiddenLiquid => 'LÍQUIDO OCULTO';

  @override
  String get frozenTube => 'TUBO CONGELADO';

  @override
  String get iceCleared => 'HIELO DESPEJADO';

  @override
  String get lockedTube => 'TUBO BLOQUEADO';

  @override
  String get lockOpened => 'CANDADO ABIERTO';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'QUEMAR SOBRANTE • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'TUBO DE CALOR • $remainingString';
  }

  @override
  String get portalPair => 'PAR DE PORTALES';

  @override
  String get oneWayValve => 'VÁLVULA UNIDIRECCIONAL';

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

    return 'CAMBIA CADA $movesString MOV.';
  }

  @override
  String get narrowTubeCap2 => 'TUBO ESTRECHO • CAP 2';

  @override
  String get hiddenMix => 'MEZCLA OCULTA';

  @override
  String get portalFlow => '¡FLUJO PORTAL!';

  @override
  String get tubesShifted => '¡TUBOS REUBICADOS!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA: ¡$remainingString MOVIMIENTOS!';
  }

  @override
  String get iceBroken => '¡Hielo roto! El tubo congelado ya se puede usar.';

  @override
  String get lockUnlocked => '¡Candado abierto! Un nuevo tubo está listo.';

  @override
  String get tubeFrozenMsg =>
      'Este tubo está congelado. Unos movimientos correctos lo descongelarán.';

  @override
  String get tubeLockedMsg =>
      'Este tubo está bloqueado. Completa otro color primero.';

  @override
  String get valveOneWayMsg =>
      'La válvula dorada es unidireccional: puedes verter dentro, pero no sacar.';

  @override
  String get heatExhaustedMsg =>
      'Este calentador se quedó sin cargas de quemado.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Monedas insuficientes ($costString).';
  }

  @override
  String get adFailed => 'No se pudo completar el anuncio.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString monedas • $title reabierto';
  }

  @override
  String reopenAd(String title) {
    return 'Abierto con anuncio • $title';
  }

  @override
  String get tipQuotaEmpty => 'Te quedaste sin pistas en este nivel.';

  @override
  String get rewardsNotReady => 'El sistema de recompensas no está listo.';

  @override
  String get freeHintUsed => 'Pista gratis usada.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Pista: -$costString monedas';
  }

  @override
  String get noHintAvailable => 'No hay pista útil ahora mismo.';

  @override
  String get assistHint => 'pista';

  @override
  String get assistUndo => 'deshacer';

  @override
  String get freeHintEarned => '1 pista gratis obtenida.';

  @override
  String get freeUndoEarned => '1 deshacer gratis obtenido.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString crédito • intento fallido (mín. $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Límite de deuda ($floorString). Mira un anuncio para reintentar.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString crédito • reiniciar';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Monedas insuficientes ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Mira un anuncio para ganar 1 $label gratis.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Límite de deuda ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Estás en el piso de deuda. Mira un anuncio para intentar de nuevo.';

  @override
  String get tipUnlockPaidBody =>
      'Viste esta regla gratis una vez.\nVolver a leer cuesta monedas.';

  @override
  String get tipUnlockAdBody =>
      'No tienes suficientes monedas.\nMira un anuncio para abrir este consejo gratis.';

  @override
  String get yourBalance => 'Saldo: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Pagar $costString';
  }

  @override
  String get timeUp => '¡SE ACABÓ EL TIEMPO!';

  @override
  String get bombExploded => '¡BOMBA EXPLOTÓ!';

  @override
  String get moveLimitReached => 'LÍMITE DE MOVIMIENTOS ALCANZADO';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Intento fallido: -$amountString crédito (deuda mín. $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Puedes desactivar la presión de tiempo en modo Fácil.';

  @override
  String get bombFailHint =>
      'Llena el tubo marcado con un solo color antes de que acabe la cuenta roja.';

  @override
  String get bossFailHint =>
      'El experimento Boss superó el límite de movimientos. Planifica mezclas y tubos vacíos con cuidado.';

  @override
  String get debtLimitRetryHint =>
      'Estás en el límite de deuda — mira un anuncio para reintentar.';

  @override
  String get retryWithAd => 'VER ANUNCIO • REINTENTAR';

  @override
  String get retryAgain => 'INTENTAR DE NUEVO';

  @override
  String get vaporized => '¡VAPORIZADO!';

  @override
  String colorClearedBonus(String color) {
    return '$color ELIMINADO  •  +4 S';
  }

  @override
  String get newColorFormed => '¡NUEVO COLOR FORMADO!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => '¡FLUJO LEGENDARIO!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLUJO x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Flujo legendario';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Flujo x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Tubo $id, $unitsString unidades llenas';
  }

  @override
  String get colorRed => 'Rojo';

  @override
  String get colorBlue => 'Azul';

  @override
  String get colorPurple => 'Morado';

  @override
  String get colorYellow => 'Amarillo';

  @override
  String get colorGreen => 'Verde';

  @override
  String get colorOrange => 'Naranja';

  @override
  String get colorPink => 'Rosa';

  @override
  String get colorCyan => 'Cian';

  @override
  String get colorLime => 'Lima';

  @override
  String get colorBrown => 'Marrón';

  @override
  String get skipLevelOfferBody =>
      'Este nivel es difícil. Mira un anuncio para desbloquear el siguiente.';

  @override
  String get skipLevelCta => 'VER ANUNCIO • SALTAR';

  @override
  String get skipLevelNote => 'Puedes volver y terminar este nivel más tarde.';

  @override
  String get skipLevelUnlocked => '¡Siguiente nivel desbloqueado!';

  @override
  String get developerModeTitle => 'Modo desarrollador';

  @override
  String get developerModePasswordHint => 'Contraseña';

  @override
  String get developerModeUnlock => 'Desbloquear';

  @override
  String get developerModeEnabled =>
      'Todos los niveles desbloqueados para pruebas.';

  @override
  String get developerModeWrongPassword => 'Contraseña incorrecta';

  @override
  String get developerModeActive => 'Modo desarrollador activo';

  @override
  String get developerModeDisable => 'Desactivar modo desarrollador';
}
