import 'package:dpu_mobil/app/core/extention/build_context/border_radius_extention.dart';
import 'package:dpu_mobil/app/core/extention/build_context/font_size_extention.dart';
import 'package:dpu_mobil/app/core/extention/build_context/icon_size_extension.dart';
import 'package:dpu_mobil/app/core/extention/build_context/padding_extension.dart';
import 'package:dpu_mobil/app/core/extention/build_context/sized_extension.dart';
import 'package:flutter/material.dart';

/// BuildContext extension
extension BuildContextExtension on BuildContext {
  /// sized context
  ContextSizeExtension get sized => ContextSizeExtension(this);

  IconSizeExtension get radius => IconSizeExtension(this);

  BorderRadiusExtention get borderRadius => BorderRadiusExtention(this);

  /// padding context
  PaddingExtensionClass get padding => PaddingExtensionClass(this);

  /// theme
  ThemeData get theme => Theme.of(this);

  /// font size context
  FontSizeExtension get fontSize => FontSizeExtension(this);
}
