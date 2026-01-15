import 'package:dpu_mobil/app/core/constant/settings.dart';
import 'package:dpu_mobil/app/product/init/app_init.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/state/theme/theme_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await AppInit.mainInit();

  runApp(
    EasyLocalization(
      supportedLocales: Settings.supportedLocales,
      path: Settings.langFilesDirectoryPath,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = GetItManager.getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeCubit(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final allThemes = context.read<ThemeCubit>().state.selectedTheme;
          return MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            title: Settings.appName,
            debugShowCheckedModeBanner: Settings.isDebugBannerOpen,
            routerConfig: _appRouter.config(),
            theme: allThemes?.theme,
          );
        },
      ),
    );
  }
}
