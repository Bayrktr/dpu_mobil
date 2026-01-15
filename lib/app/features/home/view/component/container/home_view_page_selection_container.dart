import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/manager/navigation/navigation_manager.dart';
import 'package:flutter/material.dart';

class HomeViewPageSelectionContainer<T> extends StatelessWidget {
  const HomeViewPageSelectionContainer({
    super.key,
    required this.title,
    required this.iconData,
    this.routeInfo,
    this.height,
    this.width,
  });

  final String title;
  final IconData iconData;
  final PageRouteInfo<T>? routeInfo;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationManager(
          routeInfo: routeInfo,
        ).withoutContext;
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: context.borderRadius.low,
          color: CustomColors.white.getColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: context.customTheme.selectedBottomBarItemColor,
              size: context.radius.normal,
            ),
            Padding(padding: context.padding.veryLow),
            Text(
              title,
              style: TextStyle(
                color: context.customTheme.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
