import 'package:dpu_mobil/app/product/enum/custom_icons_enum.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';

final class CustomIcons {
  CustomIcons(this.iconsEnum);

  final CustomIconsEnum iconsEnum;

  IconData get iconData {
    return switch (iconsEnum) {
      CustomIconsEnum.event => IconData(
          iconsEnum.codePoint,
          fontFamily: iconsEnum.fontFamily,
        ),
    };
  }
}
