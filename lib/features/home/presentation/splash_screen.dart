import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/app_colors.dart';
import '../../../core/audio/audio_service.dart';
import '../../../core/widgets/cosmic_backdrop.dart';
import '../../../l10n/l10n_extensions.dart';
import 'home_screen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..forward();
    // Start BGM immediately on splash — do not wait for the home transition.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final audio = ref.read(audioServiceProvider);
      unawaited(audio.unlock());
      unawaited(audio.startMusic());
    });
    _timer = Timer(const Duration(milliseconds: 1450), _openHome);
  }

  Future<void> _openHome() async {
    if (!mounted) return;
    final audio = ref.read(audioServiceProvider);
    unawaited(audio.unlock());
    unawaited(audio.startMusic());
    if (!mounted) return;
    await Navigator.of(context).pushReplacement(
      PageRouteBuilder<void>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: CosmicBackdrop(
        safeArea: false,
        child: Center(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: _controller, curve: Curves.easeOut),
            child: ScaleTransition(
              scale: Tween(begin: .72, end: 1.0).animate(
                CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 134,
                    height: 134,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x80526EFF),
                          blurRadius: 42,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset('assets/images/app_icon.png'),
                  ),
                  const SizedBox(height: 26),
                  Text(
                    l10n.brandName.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    l10n.splashTagline,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: const TextStyle(
                      color: AppColors.textMuted,
                      letterSpacing: .3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
