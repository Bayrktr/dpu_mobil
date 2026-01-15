import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';

part 'obs_attendance_report_view_mixin.dart';

@RoutePage()
class ObsAttendanceReportView extends BaseView
    with _ObsAttendanceReportViewMixin {
  const ObsAttendanceReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeViewAppBar(context: context).newsAllAppbar(appName),
    );
  }
}
