part of '../../telephone_directory_view.dart';

class _EmergencyAsistanceContainer extends StatelessWidget {
  const _EmergencyAsistanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding.normal,
      decoration: BoxDecoration(
        color: context.customTheme.emergencyContainerBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: context.borderRadius.low,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.warning_amber,
            color: Colors.white,
            size: context.radius.low,
          ),
          LocaleText(
            text: LocaleKeys.telephone_directory_page_thereIsNoEmergency,
            color: Colors.white,
            fontSize: context.fontSize.low,
          ),
        ],
      ),
    );
  }
}
