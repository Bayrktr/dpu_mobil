part of '../../all_events_view.dart';

class _EventsItem extends StatelessWidget {
  _EventsItem({super.key, this.item});

  final EventsModel? item;

  final textColor = CustomColors.white.getColor;

  @override
  Widget build(BuildContext context) {
    final date = item?.dateTime?.datetime.toDatetime;

    final timeText =
        '${date?.hour.toString() ?? '??'}:${date?.minute.toString().padLeft(2, '0') ?? '??'}';

    if (item == null) return const SizedBox();
    return InkWell(
      onTap: () {
        context.router.push(
          const EventContentRoute(),
        );
      },
      child: Container(
        padding: context.padding.low,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                DateContainer(
                  date: date,
                ),
                Container(
                  padding: context.padding.low,
                  width: context.sized.dynamicWidth(0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item?.title ?? LocaleKeys.general_unknown.lang.tr,
                        style: TextStyle(
                          color: context.customTheme.black,
                          fontSize: context.fontSize.low,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item?.message ?? LocaleKeys.general_unknown.lang.tr,
                            style: TextStyle(
                              color: context.customTheme.black,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: context.customTheme.dateBackgroundColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: context.customTheme.black,
                                ),
                                Text(
                                  timeText,
                                  style: TextStyle(
                                    color: context.customTheme.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_sharp,
              color: context.customTheme.selectedBottomBarItemColor,
              size: context.radius.low,
            ),
          ],
        ),
      ),
    );
  }
}
