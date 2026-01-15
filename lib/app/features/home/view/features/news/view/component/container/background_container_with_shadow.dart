import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:flutter/material.dart';

class BackgroundContainerWithShadow extends StatelessWidget {
  const BackgroundContainerWithShadow({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Card(

      color: CustomColors.white.getColor,
      shape: RoundedRectangleBorder(
        borderRadius: context.borderRadius.low,
      ),
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.5),
      child: widget,
    );
  }
}
