part of '../../all_academic_calendar_view.dart';

class _AcademicCalendarItem extends StatelessWidget {
  _AcademicCalendarItem({
    required this.item,
    super.key,
  });

  final AcademicCalendarModel? item;

  @override
  Widget build(BuildContext context) {
    if (item == null) return const SizedBox();
    return ListTile(
      onTap: () {
        context.router.push(
          AcademicCalendarContentRoute(
            item: item,
          ),
        );
      },
      leading: Text(
        item?.title.unkownMessage ?? '',
        style: TextStyle(
          color: context.customTheme.black,
          fontSize: context.fontSize.dynamicSize(0.032),
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_sharp,
        color: context.customTheme.selectedBottomBarItemColor,
      ),
    );
  }
}
