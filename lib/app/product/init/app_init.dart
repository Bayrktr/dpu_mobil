import 'package:dpu_mobil/app/product/cache/hive/hive_cache_manager.dart';
import 'package:dpu_mobil/app/product/cache/hive/operation/theme_operation.dart';
import 'package:dpu_mobil/app/product/constant/theme/all_themes.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final class AppInit {
  const AppInit._();

  static Future<void> mainInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    _getItInit();
    await _hiveInit();
  }

  static void _getItInit() {
    GetItManager.setup();
  }

  static Future<void> _hiveInit() async {
    await HiveCacheManager().start();
    await _themeInit();
  }

  static Future<void> _themeInit() async {
    final themeOperation = GetItManager.getIt<ThemeOperation>();
    await themeOperation.start(AllThemes.value);
  }
}
