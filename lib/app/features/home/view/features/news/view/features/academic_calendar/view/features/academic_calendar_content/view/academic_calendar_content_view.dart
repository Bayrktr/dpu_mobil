import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/academic_calendar_content/controller/academic_calendar_content_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/academic_calendar_content/model/academic_calendar_content_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/academic_calendar_content/model/academic_calendar_content_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/model/academic_calendar_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/extention/string/nullable_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'academic_calendar_content_view_mixin.dart';

part 'component/item/academic_calendar_content_item.dart';

@RoutePage()
class AcademicCalendarContentView extends BaseView
    with _AcademicCalendarContentViewMixin {
  AcademicCalendarContentView({
    super.key,
    this.item,
  });

  final AcademicCalendarModel? item;

  @override
  Widget build(BuildContext context) {
    final controller = AcademicCalendarContentController(item);

    return BlocProvider(
      create: (_) => controller,
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(
          item?.title.unkownMessage ?? '',
        ),
        body: BaseCubitWidget(
          bloc: controller,
          initial: (
            BaseInitialModel<AcademicCalendarContentInitialModel, Object,
                    Object>
                state,
          ) {
            final data = state.data?.data;
            final academicCalendarContent = data?.academicCalendarContent;
            return Padding(
              padding: context.padding.normal,
              child: BackgroundContainerWithShadow(
                widget: SizedBox.expand(
                  child: Padding(
                    padding: context.padding.normal,
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                          academicCalendarContent?.length ?? 0,
                          (index) {
                            final item = academicCalendarContent?[index];
                            final isLast = index ==
                                (academicCalendarContent?.length ?? 0) - 1;
                            return Column(
                              children: [
                                Padding(
                                  padding: context.padding.low,
                                  child: _AcademicCalendarContentItem(
                                    item: item,
                                  ),
                                ),
                                if (isLast)
                                  const SizedBox()
                                else
                                  const Divider(),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
