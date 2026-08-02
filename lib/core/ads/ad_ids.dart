import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';

/// Google AdMob unit IDs.
///
/// Currently wired to Google's official **test** IDs so ads can be verified
/// without risking an account ban. Replace with production IDs before store
/// release (AndroidManifest / Info.plist App IDs too).
abstract final class AdIds {
  // App IDs live in native manifests:
  // - Android: android/app/src/main/AndroidManifest.xml
  // - iOS: ios/Runner/Info.plist (GADApplicationIdentifier)
  static const androidAppId = 'ca-app-pub-3940256099942544~3347511713';
  static const iosAppId = 'ca-app-pub-3940256099942544~1458002511';

  static const androidBanner = 'ca-app-pub-3940256099942544/6300978111';
  static const androidInterstitial = 'ca-app-pub-3940256099942544/1033173712';
  static const androidRewarded = 'ca-app-pub-3940256099942544/5224354917';
  static const androidAppOpen = 'ca-app-pub-3940256099942544/9257395921';

  static const iosBanner = 'ca-app-pub-3940256099942544/2934735716';
  static const iosInterstitial = 'ca-app-pub-3940256099942544/4411468910';
  static const iosRewarded = 'ca-app-pub-3940256099942544/1712485313';
  static const iosAppOpen = 'ca-app-pub-3940256099942544/5575463023';

  static bool get _isIos => !kIsWeb && Platform.isIOS;

  static String get banner => _isIos ? iosBanner : androidBanner;
  static String get interstitial =>
      _isIos ? iosInterstitial : androidInterstitial;
  static String get rewarded => _isIos ? iosRewarded : androidRewarded;
  static String get appOpen => _isIos ? iosAppOpen : androidAppOpen;
}
