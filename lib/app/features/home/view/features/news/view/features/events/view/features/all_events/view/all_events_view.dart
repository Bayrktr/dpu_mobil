import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/date_container.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/all_events/controller/all_events_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/all_events/model/all_events_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/all_events/model/events_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_events_view_mixin.dart';

part 'component/item/events_item.dart';

@RoutePage()
class AllEventsView extends BaseView with _AllEventsViewMixin {
  const AllEventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AllEventsController(),
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget<AllEventsInitialModel, Object, Object>(
          bloc: AllEventsController(),
          initial:
              (BaseInitialModel<AllEventsInitialModel, Object, Object> state) {
            final data = state.data?.data;
            final allEvents = data?.allEvents;
            return Padding(
              padding: context.padding.normal,
              child: BackgroundContainerWithShadow(
                widget: SizedBox.expand(
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        allEvents?.length ?? 0,
                        (index) {
                          final item = allEvents?[index];
                          return Column(
                            children: [
                              _EventsItem(
                                item: item,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.sized.widthNormalValue,
                                ),
                                child: const Divider(),
                              ),
                            ],
                          );
                        },
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
