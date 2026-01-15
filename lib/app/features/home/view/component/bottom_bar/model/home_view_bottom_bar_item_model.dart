import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

class HomeViewBottomBarItemModel<T> {
  HomeViewBottomBarItemModel({
    this.name,
    this.message,
    required this.route,
    this.iconPath,
  });

  final String? name;
  final String? message;
  final PageRouteInfo<T> route;
  final String? iconPath;
}
