import 'dart:math';

import 'package:flutter/cupertino.dart';

final class IconSizeExtension {
  IconSizeExtension(BuildContext context) : _context = context;

  final BuildContext _context;

  final double _pi = 3.141592653589793;

  /// height size
  double get _heightSize => MediaQuery.sizeOf(_context).height;

  /// width size
  double get _widthSize => MediaQuery.sizeOf(_context).width;

  double get _height => _heightSize;

  double get _width => _widthSize;

  double get _totalArea => _height * _width;

  double get veryLow {
    final iconArea = _totalArea / 200;
    final iconRadius = sqrt(iconArea / _pi);
    return iconRadius;
  }

  double get low {
    final iconArea = _totalArea / 100;
    final iconRadius = _calculateRadius(iconArea);
    return iconRadius;
  }

  double get normal {
    final iconArea = _totalArea / 50;
    final iconRadius = _calculateRadius(iconArea);
    return iconRadius;
  }

  double get medium {
    final iconArea = _totalArea / 25;
    final iconRadius = _calculateRadius(iconArea);
    return iconRadius;
  }

  double get high {
    final iconArea = _totalArea / 12.5;
    final iconRadius = _calculateRadius(iconArea);
    return iconRadius;
  }


  double _calculateRadius(double circleArea) => sqrt(circleArea / _pi);
}
