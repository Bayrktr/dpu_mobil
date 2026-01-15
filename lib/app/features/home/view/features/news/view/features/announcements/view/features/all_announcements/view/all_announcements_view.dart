import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/date_container.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/all_announcements/controller/all_announcements_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/all_announcements/model/all_announcements_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/all_announcements/model/announcement_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_announcements_view_mixin.dart';
part 'component/item/announcement_item.dart';
@RoutePage()
class AllAnnouncementsView extends BaseView with _AllAnnouncementsViewMixin {
  const AllAnnouncementsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AllAnnouncementsController(),
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget(
          bloc: AllAnnouncementsController(),
          initial: (
            BaseInitialModel<AllAnnouncementsInitialModel, Object, Object>
                state,
          ) {
            final data = state.data?.data;
            final allAnnouncements = data?.allAnnouncements;
            return  Padding(
              padding: context.padding.normal,
              child: BackgroundContainerWithShadow(
                widget: SizedBox.expand(
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        allAnnouncements?.length ?? 0,
                            (index) {
                          final item = allAnnouncements?[index];
                          return Column(
                            children: [
                              _AnnouncementItem(
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
