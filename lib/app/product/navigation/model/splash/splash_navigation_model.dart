import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/product/navigation/model/base/base_navigation_model.dart';

class SplashNavigationModel
    implements BaseNavigationModel<SplashNavigationModel> {
  SplashNavigationModel({
    this.message,
    this.route,
    this.status,
  });

  @override
  String? message;

  @override
  PageRouteInfo? route;

  @override
  BaseNavigationStatus? status;

  @override
  SplashNavigationModel copyWith() => SplashNavigationModel();

  @override
  List<Object?> get props => [
        message,
        route,
        status,
      ];

  @override
  bool? get stringify => throw UnimplementedError();

  bool get isSuccess => status == BaseNavigationStatus.success;
}
