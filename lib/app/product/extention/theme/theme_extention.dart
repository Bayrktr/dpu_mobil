import 'package:dpu_mobil/app/product/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';

extension ThemeExtenion on BuildContext {
  CustomTheme get customTheme => Theme.of(this).extension<CustomTheme>()!;

  ThemeData get theme => Theme.of(this);
}
