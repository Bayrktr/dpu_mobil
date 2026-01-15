import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:flutter/cupertino.dart';

class NavigationManager<T> {
  NavigationManager({
    this.routeInfo,
    this.routeType = RouteType.push,
  });

  final PageRouteInfo<T>? routeInfo;

  final RouteType routeType;

  final AppRouter _appRouter = GetItManager.getIt<AppRouter>();

  Future<void> get withoutContext async {
    if(routeInfo == null) return;

    switch (routeType) {
      case RouteType.push:
        await _appRouter.push(routeInfo!);

      case RouteType.pop:
        await _appRouter.maybePop(routeInfo);
    }
  }

  Future<void> withContext(BuildContext context) async {
    if(routeInfo == null) return;

    final router = context.router;

    switch (routeType) {
      case RouteType.push:
        await router.push(routeInfo!);

      case RouteType.pop:
        await router.maybePop(routeInfo);
    }
  }
}

enum RouteType {
  push,
  pop,
}
