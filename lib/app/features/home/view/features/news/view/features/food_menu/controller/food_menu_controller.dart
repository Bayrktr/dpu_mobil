import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/controller/food_menu_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/model/food_menu_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class FoodMenuController extends BaseCubit<FoodMenuInitialModel, Object, Object,
    BaseState<FoodMenuInitialModel, Object, Object>> {
  FoodMenuController._(this.id) : super(BaseState.loading());

  final int id;


  static final Map<int, FoodMenuController> _cache = {};

  factory FoodMenuController(int id) {
    return _cache.putIfAbsent(id, () => FoodMenuController._(id));
  }

  final _foodMenuRepository = FoodMenuRepository();

  @override
  Future<void> onInit() async {
    final foodMenus = await _foodMenuRepository.getFoodMenus();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<FoodMenuInitialModel>(
          data: FoodMenuInitialModel(
            foodMenus: foodMenus,
          ),
        ),
      ),
    );
  }

  Future<void> changeFoodMenuIndex(int newIndex) async {
    if (isInitial) {
      emit(
        BaseState.initial(
          data: BaseInitialDataModel<FoodMenuInitialModel>(
            data: initialData?.data?.copyWith(
              currentFoodMenuIndex: newIndex,
            ),
          ),
        ),
      );
    }
  }
}
