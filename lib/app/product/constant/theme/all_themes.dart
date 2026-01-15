import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/product/cache/hive/model/hive_model.dart';
import 'package:dpu_mobil/app/product/constant/theme/custom_theme.dart';
import 'package:dpu_mobil/app/product/enum/font_family_enum.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
sealed class AllThemes with HiveModelMixin {
  static String get value => 'theme';

  ThemeData get theme;
}

@HiveType(typeId: 2)
class StandartTheme extends AllThemes {
  ThemeData get theme => ThemeData.light().copyWith(
        textTheme: TextTheme(
          labelSmall: TextStyle(
            fontFamily: FontFamilyEnum.helvetica.value,
          ),
        ),
        extensions: <ThemeExtension<dynamic>>[
          CustomTheme(
            foodMenuDayTitleColor: CustomColors.foodMenuDayTitleColor.getColor,
            smoothTextColor: CustomColors.smoothTextColor.getColor,
            dateBackgroundColor: CustomColors.dateBackgroundColor.getColor,
            appBarColor: CustomColors.standartAppbarColor.getColor,
            homeBottomBarColor:
                CustomColors.homeBottombarStandartColor.getColor,
            selectedBottomBarItemColor:
                CustomColors.homeBottombarStandartSelectedItemColor.getColor,
            black: CustomColors.standartBlack.getColor,
            emergencyContainerBackgroundColor:
                CustomColors.emergencyContainerBackgroundColor.getColor,
            warningRedColor: CustomColors.warningRedColor.getColor,
            studentInformationTextColor:
                CustomColors.studentInformationTextColor.getColor,
            loginGradientFirstColor:
                CustomColors.loginGradientFirstColor.getColor,
            loginGradientSecondColor: CustomColors
                .loginGradientSecondColor.getColor
                .withOpacity(0.85),
            bottomNavigationIconColor: CustomColors.white.getColor,
          ),
        ],
      );

  @override
  String get key => 'standartTheme';
}
