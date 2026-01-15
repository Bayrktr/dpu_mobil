import 'dart:ui';

final class Settings {
  const Settings._();

  static final String appName = 'Dpu Mobil';

  static final bool isDebugBannerOpen = false;

  static final String langFilesDirectoryPath = 'assets/lang';

  static final List<Locale> supportedLocales = [
    trLocale,
  ];

  static final Locale startLocale = trLocale;

  static final Locale trLocale = Locale('tr', 'TR');
}
