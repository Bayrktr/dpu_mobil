import 'package:flutter/material.dart';

/// Context Size Extension
final class ContextSizeExtension {
  /// define
  ContextSizeExtension(BuildContext context) : _context = context;
  final BuildContext _context;

  /// height size
  double get heightSize => MediaQuery.sizeOf(_context).height;

  /// width size
  double get widthSize => MediaQuery.sizeOf(_context).width;


  /// height
  double get height => heightSize;

  /// width
  double get width => widthSize;

  /// veryLow
  double get heightVeryLow => height * 0.001;

  /// lowValue
  double get heightLowValue => height * 0.01;

  /// normalValue
  double get heightNormalValue => height * 0.02;

  /// mediumValue
  double get heightMediumValue => height * 0.04;

  /// highValue
  double get heightHighValue => height * 0.1;

  /// veryHighValue
  double get heightVeryHighValue => height * 0.5;

  /// veryLow
  double get widthVeryLow => width * 0.001;

  /// lowValue
  double get widthLowValue => width * 0.01;

  /// normalValue
  double get widthNormalValue => width * 0.02;

  /// mediumValue
  double get widthMediumValue => width * 0.04;

  /// highValue
  double get widthHighValue => width * 0.1;

  /// veryHighValue
  double get widthVeryHighValue => width * 0.5;

  /// dynamicWidth
  double dynamicWidth(double val) => width * val;

  /// dynamicHeight
  double dynamicHeight(double val) => height * val;
}
