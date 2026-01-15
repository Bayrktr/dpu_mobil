import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Padding extension class
final class PaddingExtensionClass {
  /// context define
  PaddingExtensionClass(BuildContext context) : _context = context;

  final BuildContext _context;

  double get _veryLowValue => _context.sized.heightVeryLow;

  double get _lowValue => _context.sized.heightLowValue;

  double get _normalValue => _context.sized.heightNormalValue;

  double get _mediumValue => _context.sized.heightMediumValue;

  double get _highValue => _context.sized.heightHighValue;

  double get _veryHighValue => _context.sized.heightVeryHighValue;

  /// EdgeInset veryLow
  EdgeInsets get veryLow => EdgeInsets.all(_veryLowValue);

  /// EdgeInset low
  EdgeInsets get low => EdgeInsets.all(_lowValue);

  /// EdgeInset normal
  EdgeInsets get normal => EdgeInsets.all(_normalValue);

  /// EdgeInset medium
  EdgeInsets get medium => EdgeInsets.all(_mediumValue);

  /// EdgeInset high
  EdgeInsets get high => EdgeInsets.all(_highValue);

  /// EdgeInset veryHigh
  EdgeInsets get veryHigh => EdgeInsets.all(_veryHighValue);
}

extension PaddingExtension on Widget {
  /// all padding
  Widget allPadding(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  /// symatric padding
  Widget symmetricPadding({
    double vertical = 0,
    double horizontal = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  /// only padding
  Widget onlyPadding({
    double bottom = 0,
    double left = 0,
    double right = 0,
    double top = 0,
  }) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: bottom, left: left, right: right, top: top),
      child: this,
    );
  }
}
