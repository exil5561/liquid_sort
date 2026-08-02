import 'package:flutter_riverpod/flutter_riverpod.dart';

final adServiceProvider = Provider<AdService>((ref) => const FakeAdService());

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
  Future<bool> showInterstitial() async => false;

  @override
  Future<bool> showRewarded() async => true;
}
