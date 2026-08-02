import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_ids.dart';

final adServiceProvider = Provider<AdService>((ref) {
  final service = createAdService();
  ref.onDispose(service.dispose);
  return service;
});

AdService createAdService() {
  if (kIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
    return const FakeAdService();
  }
  return AdMobAdService();
}

abstract interface class AdService {
  Future<void> initialize();
  Future<void> loadInterstitial();
  Future<bool> showInterstitial();
  Future<void> loadRewarded();
  Future<bool> showRewarded();
  void dispose();
}

class FakeAdService implements AdService {
  const FakeAdService();

  @override
  void dispose() {}

  @override
  Future<void> initialize() async {}

  @override
  Future<void> loadInterstitial() async {}

  @override
  Future<void> loadRewarded() async {}

  @override
  Future<bool> showInterstitial() async {
    await Future<void>.delayed(const Duration(milliseconds: 350));
    return true;
  }

  @override
  Future<bool> showRewarded() async => true;
}

/// AdMob implementation using Google Android test unit IDs from [AdIds].
class AdMobAdService implements AdService {
  InterstitialAd? _interstitial;
  RewardedAd? _rewarded;
  var _loadingInterstitial = false;
  var _loadingRewarded = false;
  var _initialized = false;

  @override
  Future<void> initialize() async {
    if (_initialized) return;
    try {
      // Force test ads on every device while using Google sample unit IDs.
      await MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(
          testDeviceIds: const <String>['EMULATOR'],
        ),
      );
      final status = await MobileAds.instance.initialize();
      debugPrint('AdMob initialized: $status');
      _initialized = true;
      await Future.wait<void>([loadInterstitial(), loadRewarded()]);
    } catch (error, stack) {
      debugPrint('AdMob initialize failed: $error\n$stack');
    }
  }

  @override
  Future<void> loadInterstitial() async {
    if (!_initialized || _interstitial != null || _loadingInterstitial) return;
    _loadingInterstitial = true;
    try {
      await InterstitialAd.load(
        adUnitId: AdIds.interstitial,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            _interstitial = ad;
            _loadingInterstitial = false;
            debugPrint('AdMob interstitial loaded');
          },
          onAdFailedToLoad: (error) {
            _interstitial = null;
            _loadingInterstitial = false;
            debugPrint(
              'AdMob interstitial failed: code=${error.code} '
              'domain=${error.domain} message=${error.message}',
            );
          },
        ),
      );
    } catch (error) {
      _loadingInterstitial = false;
      debugPrint('AdMob interstitial load threw: $error');
    }
  }

  @override
  Future<bool> showInterstitial() async {
    if (_interstitial == null) {
      await loadInterstitial();
      // Give the SDK a brief moment if load just kicked off.
      if (_interstitial == null && _loadingInterstitial) {
        await Future<void>.delayed(const Duration(milliseconds: 1200));
      }
    }
    final ad = _interstitial;
    if (ad == null) {
      debugPrint('AdMob interstitial not ready to show');
      unawaited(loadInterstitial());
      return false;
    }

    final shown = Completer<bool>();
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (ad) {
        debugPrint('AdMob interstitial showed');
      },
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _interstitial = null;
        unawaited(loadInterstitial());
        if (!shown.isCompleted) shown.complete(true);
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        _interstitial = null;
        unawaited(loadInterstitial());
        debugPrint('AdMob interstitial show failed: $error');
        if (!shown.isCompleted) shown.complete(false);
      },
    );
    _interstitial = null;
    try {
      await ad.show();
    } catch (error) {
      debugPrint('AdMob interstitial show threw: $error');
      ad.dispose();
      unawaited(loadInterstitial());
      if (!shown.isCompleted) shown.complete(false);
    }
    return shown.future;
  }

  @override
  Future<void> loadRewarded() async {
    if (!_initialized || _rewarded != null || _loadingRewarded) return;
    _loadingRewarded = true;
    try {
      await RewardedAd.load(
        adUnitId: AdIds.rewarded,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            _rewarded = ad;
            _loadingRewarded = false;
            debugPrint('AdMob rewarded loaded');
          },
          onAdFailedToLoad: (error) {
            _rewarded = null;
            _loadingRewarded = false;
            debugPrint(
              'AdMob rewarded failed: code=${error.code} '
              'domain=${error.domain} message=${error.message}',
            );
          },
        ),
      );
    } catch (error) {
      _loadingRewarded = false;
      debugPrint('AdMob rewarded load threw: $error');
    }
  }

  @override
  Future<bool> showRewarded() async {
    if (_rewarded == null) {
      await loadRewarded();
      if (_rewarded == null && _loadingRewarded) {
        await Future<void>.delayed(const Duration(milliseconds: 1200));
      }
    }
    final ad = _rewarded;
    if (ad == null) {
      debugPrint('AdMob rewarded not ready to show');
      unawaited(loadRewarded());
      return false;
    }

    final earned = Completer<bool>();
    var rewarded = false;
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (ad) {
        debugPrint('AdMob rewarded showed');
      },
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _rewarded = null;
        unawaited(loadRewarded());
        if (!earned.isCompleted) earned.complete(rewarded);
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        _rewarded = null;
        unawaited(loadRewarded());
        debugPrint('AdMob rewarded show failed: $error');
        if (!earned.isCompleted) earned.complete(false);
      },
    );
    _rewarded = null;
    try {
      await ad.show(
        onUserEarnedReward: (ad, reward) {
          rewarded = true;
          debugPrint('AdMob reward earned: ${reward.amount} ${reward.type}');
        },
      );
    } catch (error) {
      debugPrint('AdMob rewarded show threw: $error');
      ad.dispose();
      unawaited(loadRewarded());
      if (!earned.isCompleted) earned.complete(false);
    }
    return earned.future;
  }

  @override
  void dispose() {
    _interstitial?.dispose();
    _rewarded?.dispose();
    _interstitial = null;
    _rewarded = null;
  }
}
