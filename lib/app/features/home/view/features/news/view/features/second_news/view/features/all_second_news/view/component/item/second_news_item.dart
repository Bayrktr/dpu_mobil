part of '../../all_second_news_view.dart';

class _SecondNewsItem extends StatelessWidget {
  const _SecondNewsItem({super.key, this.item});

  final NewsModel? item;

  @override
  Widget build(BuildContext context) {
    final date = item?.datetime?.datetime.toDatetime;

    if (item == null) return const SizedBox();
    return InkWell(
      onTap: () {
        context.router.push(
          const SecondNewsContentRoute(),
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
                  child:  Text(
                    item?.title ?? LocaleKeys.general_unknown.lang.tr,
                    style: TextStyle(
                      color: context.customTheme.black,
                      fontSize: context.fontSize.low,
                    ),
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
