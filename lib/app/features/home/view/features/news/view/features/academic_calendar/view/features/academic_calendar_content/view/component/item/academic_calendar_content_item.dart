part of '../../academic_calendar_content_view.dart';

class _AcademicCalendarContentItem extends StatelessWidget {
  _AcademicCalendarContentItem({required this.item, super.key});

  final AcademicCalendarContentModel? item;

  @override
  Widget build(BuildContext context) {
    if (item == null) return const SizedBox();
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () {},
        child: Text(
          item?.title.unkownMessage ?? '',
          style: TextStyle(
            color: context.customTheme.black,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
