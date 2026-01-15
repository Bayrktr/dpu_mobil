import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/login/view/features/sign_in/controller/sign_in_controller.dart';
import 'package:dpu_mobil/app/features/login/view/features/sign_in/model/sign_in_initial_model.dart';
import 'package:dpu_mobil/app/product/component/image/custom_image.dart';
import 'package:dpu_mobil/app/product/component/image/dpu_logo.dart';
import 'package:dpu_mobil/app/product/component/text/locale_text.dart';
import 'package:dpu_mobil/app/product/constant/gradient/custom_linear_gradients.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/enum/pictures_enum.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

part 'sign_in_view_mixin.dart';

@RoutePage()
class SignInView extends BaseView with _SignInViewMixin {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignInController();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: CustomLinearGradients.loginGradient(context),
        ),
        child: Stack(
          children: [
            ..._backgroundWidgets(context),
            BaseCubitWidget(
              bloc: controller,
              initial: (state) {
                final data = state.data?.data;
                final isRememberMe = data?.isRememberMe ?? false;
                final isShowPassword = data?.isShowPassword ?? false;
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(
                      context.sized.dynamicWidth(
                        0.1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const DpuLogo(),
                        Padding(
                          padding: context.padding.low,
                        ),
                        Text(
                          universityName,
                          style: TextStyle(
                            color: CustomColors.white.getColor,
                            fontWeight: FontWeight.w500,
                            fontSize: context.fontSize.dynamicSize(
                              0.035,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: context.padding.normal,
                        ),
                        TextFormField(
                          style: TextStyle(
                            color: context.customTheme.black,
                          ),
                          onChanged: controller.updateUserNameController,
                          controller: controller.userNameTextEditingController,
                          decoration: controllerDecoration(
                            context,
                            LocaleKeys.login_user_name.lang.tr,
                          ),
                        ),
                        Padding(
                          padding: context.padding.low,
                        ),
                        TextFormField(
                          style: TextStyle(
                            color: context.customTheme.black,
                          ),
                          controller: controller.passwordTextEditingController,
                          onChanged: controller.updatePasswordController,
                          obscureText: !isShowPassword,
                          decoration: controllerDecoration(
                            context,
                            LocaleKeys.login_password.lang.tr,
                          ).copyWith(
                            suffixIcon: IconButton(
                              onPressed: controller.changePasswordShow,
                              icon: Icon(
                                color: isShowPassword
                                    ? context.customTheme.warningRedColor
                                    : context.customTheme.smoothTextColor,
                                isShowPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: context.sized.dynamicHeight(
                              0.005,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.sized.widthLowValue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: controller.changeRememberMe,
                                    child: Container(
                                      width: context.sized.dynamicWidth(0.05),
                                      height: context.sized.dynamicWidth(0.05),
                                      decoration: BoxDecoration(
                                        color: CustomColors.white.getColor,
                                      ),
                                      child: Icon(
                                        isRememberMe ? Icons.check : null,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          context.sized.dynamicWidth(0.005),
                                    ),
                                  ),
                                  const LocaleText(
                                    text: LocaleKeys.login_rememberMe,
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                child: const LocaleText(
                                  text: LocaleKeys.login_didYouForgetPassword,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: context.padding.normal),
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            alignment: Alignment.center,
                            height: context.sized.dynamicWidth(0.15),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: context.borderRadius.low,
                              color: context
                                  .customTheme.selectedBottomBarItemColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: _signInButtonWidget(context, state),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            alignment: Alignment.center,
                            height: context.sized.dynamicWidth(0.15),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: context.borderRadius.low,
                              color: Colors.transparent,
                              border: Border.all(
                                color: CustomColors.white.getColor,
                              ),
                            ),
                            child: LocaleText(
                              text: LocaleKeys.login_visitor,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.white.getColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: context.padding.normal,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}
