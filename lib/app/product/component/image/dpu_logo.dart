import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/product/enum/pictures_enum.dart';
import 'package:flutter/material.dart';

class DpuLogo extends StatelessWidget {
  const DpuLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.sized.dynamicWidth(0.2),
      height: context.sized.dynamicWidth(0.2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            PicturesEnum.dpuLogo.pngPath,
          ),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            blurRadius: 10,
          ),
        ],
      ),
    );
  }
}
