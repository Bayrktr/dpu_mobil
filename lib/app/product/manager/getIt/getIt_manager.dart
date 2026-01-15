import 'package:dpu_mobil/app/product/cache/hive/operation/theme_operation.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:get_it/get_it.dart';

final class GetItManager {
  const GetItManager._();

  static final getIt = GetIt.instance;

  static void setup() {
    getIt
      ..registerSingleton<DioService>(DioService())
      ..registerSingleton<AppRouter>(
        AppRouter(),
      )
      ..registerSingleton<ThemeOperation>(
        ThemeOperation(),
      );
  }
}
