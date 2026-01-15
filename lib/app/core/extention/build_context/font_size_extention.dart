import 'package:flutter/material.dart';

final class FontSizeExtension {
  FontSizeExtension(BuildContext context) : _context = context;

  final BuildContext _context;

  /// width size
  double get _widthSize => MediaQuery.sizeOf(_context).width;

  double get _width => _widthSize;

  double get veryLow => _width * (_width < 400 ? 0.018 : 0.02);

  double get low => _width * (_width < 400 ? 0.03 : 0.04);

  double get normal => _width * 0.06;

  double get medium => _width * 0.08;

  double get high => _width * 0.10;

  double dynamicSize(double val) => _width * val;
}
