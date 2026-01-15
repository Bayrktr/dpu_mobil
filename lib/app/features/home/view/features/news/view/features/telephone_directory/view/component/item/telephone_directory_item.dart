part of '../../telephone_directory_view.dart';

class _TelephoneDirectoryItem extends StatelessWidget {
  const _TelephoneDirectoryItem({required this.item, super.key});

  final TelephoneDirectoryModel? item;

  @override
  Widget build(BuildContext context) {
    if (item == null) return const SizedBox();
    return Container(
      padding: context.padding.low,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item?.title.unkownMessage ?? '',
            style: TextStyle(
              color: context.customTheme.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item?.phoneNumber.unkownMessage ?? '',
                style: TextStyle(
                  color: context.customTheme.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone_outlined,
                  color: context.customTheme.foodMenuDayTitleColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
