import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/controller/home_controller.dart';
import 'package:dpu_mobil/app/features/home/model/home_initial_model.dart';
import 'package:dpu_mobil/app/features/home/model/home_navigate_models.dart';
import 'package:dpu_mobil/app/features/home/view/component/bottom_bar/model/home_view_bottom_bar_item_model.dart';
import 'package:dpu_mobil/app/product/component/image/custom_image.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/enum/icons_enum.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'component/bottom_bar/home_view_bottom_bar.dart';

part 'component/bottom_bar/home_view_bottom_bar_item.dart';

part 'home_view_mixin.dart';

@RoutePage()
class HomeView extends BaseView with _HomeViewMixin {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController(1);
    return BlocProvider(
      create: (_) => controller,
      child: AutoTabsRouter.tabBar(
        builder: (context, child, tabController) {
          return BaseCubitWidget(
            bloc: controller,
            blocType: BlocType.both,
            initial: (state) {
              return GeneralScaffold(
                body: child,
                bottomNavigationBar: _HomeViewBottomBar(
                  selectedItemIndex: context.tabsRouter.activeIndex,
                  items: items,
                ),
              );
            },
            listener: (
              BuildContext context,
              BaseState<HomeInitialModel, Object, Object> state,
            ) {
              if (state is BaseInitialModel<HomeInitialModel, Object, Object>) {
                final initialData = state.data?.data;
                switch (initialData?.navigate) {
                  case null:
                  case HomeNoneNavigateModel():
                  case HomeNewsAllNavigateModel():
                    final centerIndex =
                        (context.tabsRouter.pageCount / 2).floor();
                    context.tabsRouter.setActiveIndex(centerIndex);
                }
              }
            },
          );
        },
        routes: routes,
      ),
    );
  }
}
