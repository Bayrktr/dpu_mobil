import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';

part 'syllabus_view_mixin.dart';

@RoutePage()
class SyllabusView extends BaseView with _SyllabusViewMixin {
  const SyllabusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeViewAppBar(context: context).newsAllAppbar(appName),
    );
  }
}
