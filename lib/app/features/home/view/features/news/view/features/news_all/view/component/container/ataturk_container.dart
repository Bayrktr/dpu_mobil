part of '../../news_all_view.dart';

class _AtaturkContainer extends StatelessWidget {
  const _AtaturkContainer({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding.normal,
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
      child: CustomImage(
        imageFrom: ImageFrom.ASSET,
        imageType: ImageType.PNG,
        assetPath: PicturesEnum.ataturk.pngPath,
      ),
    );
  }
}
