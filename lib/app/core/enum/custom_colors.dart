import 'package:flutter/material.dart';

enum CustomColors {
  test('0b429c'),
  white('ffffff'),
  standartBlack('09122C'),
  homeBottombarStandartColor('09122C'),
  homeBottombarStandartSelectedItemColor('D8403F'),
  standartAppbarColor('09122C'),
  dateBackgroundColor('FAEEEE'),
  smoothTextColor('8A8A8A'),
  foodMenuDayTitleColor('757575'),
  emergencyContainerBackgroundColor('00C746'),
  warningRedColor('FD0000'),
  studentInformationTextColor('09122C'),
  loginGradientFirstColor('2B3467'),
  loginGradientSecondColor('2B3467'),
  ;

  final String value;

  const CustomColors(this.value);

  int get toRgba => int.parse('0xFF$value');

  Color get getColor => Color(toRgba);
}
