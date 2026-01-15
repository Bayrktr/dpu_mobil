import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';

final class CustomLinearGradients {
  CustomLinearGradients._();

  static LinearGradient loginGradient(
    BuildContext context,
  ) =>
      LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          context.customTheme.loginGradientFirstColor,
          context.customTheme.loginGradientSecondColor,
        ],
      );
}
