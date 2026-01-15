

part of '../../all_information_view.dart';

class _InformationItem extends StatelessWidget {
   _InformationItem({super.key, this.item});

  final BaseInformationModel? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: CustomImage(
                  width: context.sized.widthHighValue,
                  height:
                  context.sized.widthHighValue,
                  imageFrom: ImageFrom.NETWORK,
                  imageType: ImageType.PNG,
                  networkUrl: item?.logoUrl ?? '',
                ),
              ),
              Padding(
                padding: context.padding.low,
              ),
              Text(
                item?.title ?? '',
                style: TextStyle(
                  color: context.customTheme.black,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_sharp,
            color: context.customTheme
                .selectedBottomBarItemColor,
          ),
        ],
      ),
    );
  }
}
