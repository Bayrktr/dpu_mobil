import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';


class HomeViewPageSelectionContainerModel<T> {
  const HomeViewPageSelectionContainerModel({
    required this.title,
    required this.iconData,
    this.routeInfo,
  });

  final String title;
  final IconData iconData;
  final PageRouteInfo<T>? routeInfo;
}
