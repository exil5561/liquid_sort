import 'package:flutter/material.dart';

/// Supported app locales. English is the template / fallback language.
abstract final class AppLocale {
  static const systemCode = 'system';

  static const supported = <Locale>[
    Locale('en'),
    Locale('tr'),
    Locale('es'),
    Locale('pt', 'BR'),
    Locale('fr'),
    Locale('de'),
    Locale('it'),
    Locale('ru'),
    Locale('ja'),
    Locale('ko'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
    Locale('ar'),
    Locale('id'),
    Locale('vi'),
    Locale('th'),
    Locale('pl'),
    Locale('nl'),
    Locale('uk'),
    Locale('hi'),
  ];

  static const nativeNames = <String, String>{
    'en': 'English',
    'tr': 'Türkçe',
    'es': 'Español',
    'pt_BR': 'Português (Brasil)',
    'fr': 'Français',
    'de': 'Deutsch',
    'it': 'Italiano',
    'ru': 'Русский',
    'ja': '日本語',
    'ko': '한국어',
    'zh_CN': '简体中文',
    'zh_TW': '繁體中文',
    'ar': 'العربية',
    'id': 'Bahasa Indonesia',
    'vi': 'Tiếng Việt',
    'th': 'ไทย',
    'pl': 'Polski',
    'nl': 'Nederlands',
    'uk': 'Українська',
    'hi': 'हिन्दी',
  };

  static String codeOf(Locale locale) {
    final country = locale.countryCode;
    if (country != null && country.isNotEmpty) {
      return '${locale.languageCode}_$country';
    }
    return locale.languageCode;
  }

  static Locale? tryParse(String? code) {
    if (code == null || code.isEmpty || code == systemCode) return null;
    final parts = code.split('_');
    if (parts.length == 1) {
      return Locale(parts[0]);
    }
    return Locale(parts[0], parts[1]);
  }

  static Locale resolveDeviceLocale(List<Locale>? deviceLocales) {
    final locales = deviceLocales ?? const <Locale>[];
    for (final device in locales) {
      final exact = _matchExact(device);
      if (exact != null) return exact;
    }
    for (final device in locales) {
      final languageOnly = _matchLanguage(device.languageCode);
      if (languageOnly != null) return languageOnly;
    }
    return const Locale('en');
  }

  static Locale? _matchExact(Locale device) {
    for (final supported in AppLocale.supported) {
      if (supported.languageCode != device.languageCode) continue;
      final supportedCountry = supported.countryCode;
      final deviceCountry = device.countryCode;
      if (supportedCountry == null || supportedCountry.isEmpty) {
        if (deviceCountry == null || deviceCountry.isEmpty) return supported;
        continue;
      }
      if (supportedCountry == deviceCountry) return supported;
    }
    return null;
  }

  static Locale? _matchLanguage(String languageCode) {
    // Prefer regional defaults when device only reports a language code.
    if (languageCode == 'zh') return const Locale('zh', 'CN');
    if (languageCode == 'pt') return const Locale('pt', 'BR');
    for (final supported in AppLocale.supported) {
      if (supported.languageCode == languageCode) return supported;
    }
    return null;
  }

  static bool isRtl(Locale locale) => locale.languageCode == 'ar';
}
