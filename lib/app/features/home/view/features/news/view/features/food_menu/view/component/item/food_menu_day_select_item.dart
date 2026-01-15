part of '../../food_menu_view.dart';

class _FoodMenuDaySelectItem extends StatelessWidget {
  _FoodMenuDaySelectItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    this.item,
  });

  final int index;
  final int currentIndex;
  final void Function()? onTap;
  final FoodMenuModel? item;

  @override
  Widget build(BuildContext context) {
    final datetime = item?.datetime?.datetime.toDatetime;
    final dayName = datetime?.dayName.unkownMessage;
    final isSelected = currentIndex == index;
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            dayName!.first(3),
            style: TextStyle(
              fontSize: context.fontSize.low,
              color: context.customTheme.foodMenuDayTitleColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (isSelected)
            Container(
              padding: context.padding.low,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.customTheme.selectedBottomBarItemColor,
              ),
              child: Text(
                datetime?.day.toString() ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: CustomColors.white.getColor,
                  fontSize: context.fontSize.low,
                ),
              ),
            )
          else
            Text(
              datetime?.day.toString() ?? '',
              style: TextStyle(
                color: context.customTheme.foodMenuDayTitleColor,
                fontSize: context.fontSize.low,
              ),
            ),
        ],
      ),
    );
  }
}
