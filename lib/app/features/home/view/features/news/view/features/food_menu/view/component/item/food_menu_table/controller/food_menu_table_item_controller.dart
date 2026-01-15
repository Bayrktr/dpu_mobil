import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/view/component/item/food_menu_table/model/food_menu_table_item_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';

class FoodMenuTableItemController extends BaseCubit<
    FoodMenuTableItemInitialModel,
    Object,
    Object,
    BaseState<FoodMenuTableItemInitialModel, Object, Object>> {
  FoodMenuTableItemController() : super(BaseState.loading());

  @override
  Future<void> onInit() async {
  }
}
