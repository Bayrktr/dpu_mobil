part of '../../telephone_directory_view.dart';


class _EmergencyAsistanceCircleContainer extends StatelessWidget {
  const _EmergencyAsistanceCircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding.normal,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.customTheme.warningRedColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.warning_amber,
            color: Colors.white,
            size: context.radius.normal,
          ),
          Padding(
            padding: context.padding.veryLow,
          ),
          const LocaleText(
            text: LocaleKeys
                .telephone_directory_page_emergencyAsistance,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
