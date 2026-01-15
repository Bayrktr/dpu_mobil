import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/splash/controller/splash_controller.dart';
import 'package:dpu_mobil/app/features/splash/model/splash_model.dart';
import 'package:dpu_mobil/app/product/component/image/dpu_logo.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/enum/pictures_enum.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/manager/navigation/navigation_manager.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_view_mixin.dart';

@RoutePage()
class SplashView extends BaseView with _SplashViewMixin {
  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashController(),
      child: BaseCubitWidget<SplashModel, Object, Object>(
        bloc: SplashController(),
        blocType: BlocType.both,
        initial: (BaseInitialModel<SplashModel, Object, Object> state) {
          final splashData = state.model;

          return Container();
        },
        loading: (state) {
          return Scaffold(
            backgroundColor: context.customTheme.studentInformationTextColor,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const DpuLogo(),
                  Padding(
                    padding: context.padding.normal,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {
          switch (state) {
            case BaseInitialModel<SplashModel, Object, Object>():
              if (state.model?.navigate?.isSuccess ?? false) {
                NavigationManager(
                  routeInfo: state.model?.navigate?.route,
                ).withoutContext;
              }

            case BaseLoadingModel<SplashModel, Object, Object>():
            case BaseErrorModel<SplashModel, Object, Object>():
          }
        },
      ),
    );
  }
}
