import 'package:dpu_mobil/app/product/component/image/custom_image.dart';
import 'package:dpu_mobil/app/product/enum/pictures_enum.dart';
import 'package:flutter/material.dart';

class GeneralScaffold extends StatelessWidget {
  const GeneralScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
  });

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: CustomImage(
            imageFrom: ImageFrom.ASSET,
            imageType: ImageType.PNG,
            assetPath: PicturesEnum.background.pngPath,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar,
          body: body,
          bottomNavigationBar: bottomNavigationBar,
        ),
      ],
    );
  }
}
