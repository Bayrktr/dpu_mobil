import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';

abstract class BaseNavigationModel<T extends BaseNavigationModel<T>>
    with EquatableMixin {
  BaseNavigationStatus? status;

  String? message;

  PageRouteInfo<dynamic>? route;

  @override
  List<Object?> get props;

  T copyWith();
}

enum BaseNavigationStatus {
  initial,
  error,
  success,
}
