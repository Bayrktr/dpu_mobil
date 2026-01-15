import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  const CustomTheme({
    required this.appBarColor,
    required this.homeBottomBarColor,
    required this.selectedBottomBarItemColor,
    required this.black,
    required this.dateBackgroundColor,
    required this.smoothTextColor,
    required this.foodMenuDayTitleColor,
    required this.emergencyContainerBackgroundColor,
    required this.warningRedColor,
    required this.studentInformationTextColor,
    required this.loginGradientFirstColor,
    required this.loginGradientSecondColor,
    required this.bottomNavigationIconColor,
  });

  final Color appBarColor;
  final Color homeBottomBarColor;
  final Color selectedBottomBarItemColor;
  final Color black;
  final Color dateBackgroundColor;
  final Color smoothTextColor;
  final Color foodMenuDayTitleColor;
  final Color emergencyContainerBackgroundColor;
  final Color warningRedColor;
  final Color studentInformationTextColor;
  final Color loginGradientFirstColor;
  final Color loginGradientSecondColor;
  final Color bottomNavigationIconColor;

  @override
  CustomTheme copyWith({
    Color? appBarColor,
    Color? homeBottomBarColor,
    Color? selectedBottomBarItemColor,
    Color? black,
    Color? dateBackgroundColor,
    Color? smoothTextColor,
    Color? foodMenuDayTitleColor,
    Color? emergencyContainerBackgroundColor,
    Color? warningRedColor,
    Color? studentInformationTextColor,
    Color? loginGradientFirstColor,
    Color? loginGradientSecondColor,
    Color? bottomNavigationIconColor,
  }) {
    return CustomTheme(
      appBarColor: appBarColor ?? this.appBarColor,
      homeBottomBarColor: homeBottomBarColor ?? this.homeBottomBarColor,
      selectedBottomBarItemColor:
          selectedBottomBarItemColor ?? this.selectedBottomBarItemColor,
      black: black ?? this.black,
      dateBackgroundColor: dateBackgroundColor ?? this.dateBackgroundColor,
      smoothTextColor: smoothTextColor ?? this.smoothTextColor,
      foodMenuDayTitleColor:
          foodMenuDayTitleColor ?? this.foodMenuDayTitleColor,
      emergencyContainerBackgroundColor: emergencyContainerBackgroundColor ??
          this.emergencyContainerBackgroundColor,
      warningRedColor: warningRedColor ?? this.warningRedColor,
      studentInformationTextColor:
          studentInformationTextColor ?? this.studentInformationTextColor,
      loginGradientFirstColor:
          loginGradientFirstColor ?? this.loginGradientFirstColor,
      loginGradientSecondColor:
          loginGradientSecondColor ?? this.loginGradientSecondColor,
      bottomNavigationIconColor:
          bottomNavigationIconColor ?? this.bottomNavigationIconColor,
    );
  }

  @override
  ThemeExtension<CustomTheme> lerp(
    covariant ThemeExtension<CustomTheme>? other,
    double t,
  ) {
    if (other is! CustomTheme) return this;
    return CustomTheme(
      foodMenuDayTitleColor: foodMenuDayTitleColor,
      appBarColor: appBarColor,
      homeBottomBarColor: homeBottomBarColor,
      selectedBottomBarItemColor: selectedBottomBarItemColor,
      black: black,
      dateBackgroundColor: dateBackgroundColor,
      smoothTextColor: smoothTextColor,
      emergencyContainerBackgroundColor: emergencyContainerBackgroundColor,
      warningRedColor: warningRedColor,
      studentInformationTextColor: studentInformationTextColor,
      loginGradientFirstColor: loginGradientFirstColor,
      loginGradientSecondColor: loginGradientSecondColor,
        bottomNavigationIconColor: bottomNavigationIconColor,
    );
  }
}
