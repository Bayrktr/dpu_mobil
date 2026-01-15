import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/student_information/controller/student_information_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/student_information/model/student_information_initial_model.dart';
import 'package:dpu_mobil/app/product/component/text/locale_text.dart';
import 'package:dpu_mobil/app/product/extention/string/nullable_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';

part 'student_information_view_mixin.dart';

@RoutePage()
class StudentInformationView extends BaseView
    with _StudentInformationViewMixin {
  const StudentInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = StudentInformationController();
    return Scaffold(
      appBar: HomeViewAppBar(context: context).newsAllAppbar(appName),
      body: BaseCubitWidget(
        bloc: controller,
        initial: (
          BaseInitialModel<StudentInformationInitialModel, Object, Object>
              state,
        ) {
          final data = state.data?.data;
          final studentInformation = data?.studentInformation;
          return Padding(
            padding: context.padding.normal,
            child: BackgroundContainerWithShadow(
              widget: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: context.sized.heightNormalValue,
                ),
                child: Column(
                  children: [
                    Text(
                      studentInformation?.name.unkownMessage ?? '',
                      style: _textStyle(context),
                    ),
                    const Divider(),
                    Text(
                      studentInformation?.faculty.unkownMessage ?? '',
                      style: _textStyle(context),
                    ),
                    _dividerWithSpace(
                      context,
                    ),
                    Text(
                      studentInformation?.section.unkownMessage ?? '',
                      style: _textStyle(context),
                    ),
                    _dividerWithSpace(
                      context,
                    ),
                    Text(
                      studentInformation?.studentNumber
                              .toString()
                              .unkownMessage ??
                          '',
                      style: _textStyle(context),
                    ),
                    _dividerWithSpace(
                      context,
                    ),
                    LocaleText(
                      text: LocaleKeys.student_information_classLevel.lang.tr,
                      args: [
                        studentInformation?.classLevel.toString() ?? '?',
                      ],
                      textStyle: _textStyle(context),
                    ),
                    _dividerWithSpace(
                      context,
                    ),
                    LocaleText(
                      text: LocaleKeys.student_information_gpa.lang.tr,
                      args: [studentInformation?.gpa.toString() ?? '?'],
                      textStyle: _textStyle(context),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _dividerWithSpace(
    BuildContext context,
  ) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.sized.widthNormalValue,
        ),
        child: const Divider(),
      );

  TextStyle _textStyle(
    BuildContext context,
  ) =>
      TextStyle(
        fontWeight: FontWeight.w500,
        color: context.customTheme.studentInformationTextColor,
      );
}
