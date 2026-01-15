import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:flutter/material.dart';

class HomeViewAppBarProfileIcon extends StatelessWidget {
  const HomeViewAppBarProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){},
      icon: Container(
        padding: context.padding.low,
        decoration: BoxDecoration(
          borderRadius: context.borderRadius.low,
          color: context.customTheme.selectedBottomBarItemColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        child:  Icon(
          Icons.person,
          color: CustomColors.white.getColor,
        ),
      ),
    );
  }
}
