import 'package:flutter/cupertino.dart';

final class BorderRadiusExtention {
  BorderRadiusExtention(BuildContext context) : _context = context;

  final BuildContext _context;

  /// height size
  double get _heightSize => MediaQuery.sizeOf(_context).height;

  /// width size
  double get _widthSize => MediaQuery.sizeOf(_context).width;

  double get _height => _heightSize;

  double get _width => _widthSize;

  BorderRadius get low {
    return BorderRadius.circular(_width * 0.02);
  }

  BorderRadius get normal {
    return BorderRadius.circular(_width * 0.04);
  }

  BorderRadius get medium {
    return BorderRadius.circular(_width * 0.06);
  }

  BorderRadius get high {
    return BorderRadius.circular(_width * 0.08);
  }
}
