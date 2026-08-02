import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/core/l10n/app_locale.dart';
import 'package:liquid_sort/l10n/app_localizations.dart';

void main() {
  test('supported locales cover the 20 launch languages', () {
    expect(AppLocale.supported, hasLength(20));
    expect(AppLocalizations.supportedLocales, contains(const Locale('en')));
    expect(AppLocalizations.supportedLocales, contains(const Locale('tr')));
    expect(
      AppLocalizations.supportedLocales,
      contains(const Locale('pt', 'BR')),
    );
    expect(
      AppLocalizations.supportedLocales,
      contains(const Locale('zh', 'CN')),
    );
    expect(AppLocalizations.supportedLocales, contains(const Locale('ar')));
  });

  test('unsupported device locales fall back to English', () {
    final resolved = AppLocale.resolveDeviceLocale(const [Locale('xx')]);
    expect(resolved, const Locale('en'));
  });
}
