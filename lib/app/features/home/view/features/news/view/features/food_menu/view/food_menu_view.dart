import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/controller/food_menu_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/model/food_menu_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/model/food_menu_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/view/component/item/food_menu_table/controller/food_menu_table_item_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/view/component/item/food_menu_table/model/food_menu_table_item_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/view/component/item/food_menu_table/model/food_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/extention/datetime/Idatetime_extention.dart';
import 'package:dpu_mobil/app/product/extention/string/general_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/string/nullable_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'food_menu_view_mixin.dart';

part 'component/item/food_menu_day_select_item.dart';

part 'component/item/food_menu_table/view/food_menu_table_item_view.dart';

@RoutePage()
class FoodMenuView extends BaseView with _FoodMenuViewMixin {
  const FoodMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = FoodMenuController(1); // fixme burası hakkında bır araştırma yapılması lazım

    return BlocProvider(
      create: (_) => controller,
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget(
          bloc: controller,
          initial: (
            BaseInitialModel<FoodMenuInitialModel, Object, Object> state,
          ) {
            final data = state.data?.data;
            final foodMenus = data?.foodMenus;
            final currentFoodMenuIndex = data?.currentFoodMenuIndex ?? 0;
            final foods = foodMenus?[currentFoodMenuIndex]?.foods;
            return Padding(
              padding: context.padding.normal,
              child: BackgroundContainerWithShadow(
                widget: SizedBox.expand(
                  child: Padding(
                    padding: context.padding.medium,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              foodMenus?.length ?? 0,
                              (index) {
                                final item = foodMenus?[index];
                                return _FoodMenuDaySelectItem(
                                  index: index,
                                  currentIndex: currentFoodMenuIndex,
                                  onTap: () {
                                    controller.changeFoodMenuIndex(index);
                                  },
                                  item: item,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: context.padding.normal,
                            child: const Divider(),
                          ),
                          Column(
                            children: List.generate(
                              foods?.length ?? 0,
                              (index) {
                                final item = foods?[index];
                                return ListTile(
                                  leading: Text(
                                    item?.name ?? '',
                                    style: TextStyle(
                                      color: context.customTheme.black,
                                      fontSize: context.fontSize.low,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.warning_amber,
                                    color: context
                                        .customTheme.selectedBottomBarItemColor,
                                  ),
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '${getTotalKcal(
                                foods ?? [],
                              )}(kcal)',
                              style: TextStyle(
                                color:
                                    context.customTheme.foodMenuDayTitleColor,
                              ),
                            ),
                          ),
                        ],
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
