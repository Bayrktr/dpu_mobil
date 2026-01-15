import 'package:dpu_mobil/app/features/home/model/home_initial_model.dart';
import 'package:dpu_mobil/app/features/home/model/home_navigate_models.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class HomeController extends BaseCubit<HomeInitialModel, Object, Object,
    BaseState<HomeInitialModel, Object, Object>> {
  HomeController._(this.id) : super(BaseState.initial());

  final int id;

  static final Map<int, HomeController> _cache = {};

  factory HomeController(int id) {
    return _cache.putIfAbsent(id, () => HomeController._(id));
  }

  @override
  Future<void> onInit() async {
    resetNavigate();
  }

  void updateNavigatePage(HomeNavigateModel navigate) {
    if (navigate is HomeNoneNavigateModel) return;
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<HomeInitialModel>(
          data: HomeInitialModel(
            navigate: navigate,
          ),
        ),
      ),
    );
  }

  void resetNavigate() {
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<HomeInitialModel>(
          data: HomeInitialModel(
            navigate: HomeNoneNavigateModel(),
          ),
        ),
      ),
    );
  }
}
