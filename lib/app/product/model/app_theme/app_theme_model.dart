import 'package:flutter/material.dart';

abstract class AppThemeModel {
  static Color? test;
}

class LightThemeModel extends AppThemeModel {
  LightThemeModel({
    this.test = Colors.black,
  });

  final Color? test;
}


class DarkThemeModel extends AppThemeModel {
  DarkThemeModel({
    this.test = Colors.black,
  });

  final Color? test;
}
