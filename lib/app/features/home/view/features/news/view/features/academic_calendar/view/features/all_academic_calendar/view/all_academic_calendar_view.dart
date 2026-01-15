import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/controller/all_academic_calendar_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/model/academic_calendar_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/model/all_academic_calendar_initial_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/extention/string/nullable_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_academic_calendar_view_mixin.dart';

part 'component/item/academic_calendar_item.dart';

@RoutePage()
class AllAcademicCalendarView extends BaseView
    with _AllAcademicCalendarViewMixin {
  const AllAcademicCalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AllAcademicCalendarController(),
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget(
          bloc: AllAcademicCalendarController(),
          initial: (
            BaseInitialModel<AllAcademicCalendarInitialModel, Object, Object>
                state,
          ) {
            final data = state.data?.data;
            final allAcademicCalendars = data?.allAcademicCalendars;
            return Padding(
              padding: context.padding.normal,
              child: BackgroundContainerWithShadow(
                widget: SizedBox.expand(
                  child: Padding(
                    padding: context.padding.normal,
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                          allAcademicCalendars?.length ?? 0,
                          (index) {
                            final item = allAcademicCalendars?[index];
                            final isLast = index ==
                                (allAcademicCalendars?.length ?? 0) - 1;
                            return Column(
                              children: [
                                _AcademicCalendarItem(
                                  item: item,
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
