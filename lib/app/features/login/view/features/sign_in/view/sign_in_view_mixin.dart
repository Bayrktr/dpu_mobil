part of 'sign_in_view.dart';

mixin _SignInViewMixin on StatelessWidget {
  String get universityName =>
      '${AppConstant.kutahya}\n${AppConstant.dumlupinar}\n${LocaleKeys.general_university.lang.tr}';

  Widget _signInButtonWidget(
      BuildContext context,
      BaseState<SignInInitialModel, Object, Object> state,
      ) {
    switch (state) {
      case BaseInitialModel<SignInInitialModel, Object, Object>():
        return LocaleText(
          text: LocaleKeys.login_login,
          fontWeight: FontWeight.w500,
          color: CustomColors.white.getColor,
        );
      case BaseLoadingModel<SignInInitialModel, Object, Object>():
        return const CircularProgressIndicator();
      case BaseErrorModel<SignInInitialModel, Object, Object>():
        return const Icon(
          Icons.error_outline,
        );
    }
  }

  InputDecoration controllerDecoration(BuildContext context, String hintText) {
    return InputDecoration(
      hintStyle: TextStyle(
        color: context.customTheme.smoothTextColor,
      ),
      hintText: hintText,
      filled: true,
      fillColor: CustomColors.white.getColor,
      contentPadding: context.padding.normal,
      border: OutlineInputBorder(
        borderRadius: context.borderRadius.low,
        borderSide: BorderSide.none,
      ),
    );
  }

  List<Widget> _backgroundWidgets(
    BuildContext context,
  ) =>
      [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            height: context.sized.dynamicHeight(0.2),
            child: Opacity(
              opacity: 0.4,
              child: CustomImage(
                imageFrom: ImageFrom.ASSET,
                imageType: ImageType.PNG,
                assetPath: PicturesEnum.dpu.pngPath,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomImage(
            width: context.sized.dynamicWidth(0.2),
            imageFrom: ImageFrom.ASSET,
            imageType: ImageType.PNG,
            assetPath: PicturesEnum.ddyo.pngPath,
          ),
        ),
      ];
}
