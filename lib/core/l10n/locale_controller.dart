import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_locale.dart';

const _prefsKey = 'appLocale';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw StateError('SharedPreferences must be overridden in main.');
});

final localeControllerProvider =
    NotifierProvider<LocaleController, LocalePreference>(LocaleController.new);

class LocalePreference {
  const LocalePreference({this.overrideLocale});

  /// Null means follow the device locale.
  final Locale? overrideLocale;

  bool get isSystem => overrideLocale == null;

  String get storageCode =>
      overrideLocale == null ? AppLocale.systemCode : AppLocale.codeOf(overrideLocale!);
}

class LocaleController extends Notifier<LocalePreference> {
  @override
  LocalePreference build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    final saved = prefs.getString(_prefsKey);
    return LocalePreference(overrideLocale: AppLocale.tryParse(saved));
  }

  Future<void> setSystemLocale() async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.remove(_prefsKey);
    state = const LocalePreference();
  }

  Future<void> setLocale(Locale locale) async {
    final prefs = ref.read(sharedPreferencesProvider);
    final code = AppLocale.codeOf(locale);
    await prefs.setString(_prefsKey, code);
    state = LocalePreference(overrideLocale: locale);
  }

  Locale resolve(List<Locale>? deviceLocales) {
    return state.overrideLocale ?? AppLocale.resolveDeviceLocale(deviceLocales);
  }
}
