import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/audio/audio_service.dart';
import '../core/l10n/app_locale.dart';
import '../core/l10n/locale_controller.dart';
import '../features/home/presentation/splash_screen.dart';
import '../l10n/app_localizations.dart';
import 'theme/app_theme.dart';

class LiquidSortApp extends ConsumerStatefulWidget {
  const LiquidSortApp({super.key});

  @override
  ConsumerState<LiquidSortApp> createState() => _LiquidSortAppState();
}

class _LiquidSortAppState extends ConsumerState<LiquidSortApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final audio = ref.read(audioServiceProvider);
    switch (state) {
      case AppLifecycleState.resumed:
        // Ads / system can stop AudioTrack — resumeMusic restarts if needed.
        unawaited(audio.resumeMusic());
      case AppLifecycleState.paused:
      case AppLifecycleState.hidden:
      case AppLifecycleState.detached:
        // Do NOT pause on `inactive` — Android fires it during navigation/dialogs.
        unawaited(audio.pauseMusic());
      case AppLifecycleState.inactive:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final localePreference = ref.watch(localeControllerProvider);
    final localeController = ref.read(localeControllerProvider.notifier);

    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (_) {
        unawaited(ref.read(audioServiceProvider).unlock());
      },
      child: MaterialApp(
        onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.dark,
        locale: localePreference.overrideLocale,
        supportedLocales: AppLocale.supported,
        localeListResolutionCallback: (deviceLocales, supported) {
          if (localePreference.overrideLocale != null) {
            return localePreference.overrideLocale;
          }
          return localeController.resolve(deviceLocales);
        },
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: const SplashScreen(),
      ),
    );
  }
}
