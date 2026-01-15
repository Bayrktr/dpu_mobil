import 'package:dpu_mobil/app/features/splash/model/splash_model.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/navigation/model/base/base_navigation_model.dart';
import 'package:dpu_mobil/app/product/navigation/model/splash/splash_navigation_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/error/base_error_data_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/loading/base_loading_data_model.dart';

class SplashController extends BaseCubit<SplashModel, Object, Object,
    BaseState<SplashModel, Object, Object>> {
  SplashController() : super(BaseState.loading());

  @override
  Future<void> onInit() async {
    await initializeApp();
  }

  Future<void> initializeApp() async {
    try {
      emit(BaseState.loading(
          data: BaseLoadingDataModel(message: "Yükleniyor...")));

      await Future.delayed(Duration(seconds: 1));

      bool success = true;

      if (success) {
        // burda kaldım state guncellenmıyor
        emit(
          BaseState.initial(
            data: BaseInitialDataModel<SplashModel>(
              data: SplashModel(
                navigate: SplashNavigationModel(
                  message: 'selam',
                  route: HomeRoute(), // fixme
                  status: BaseNavigationStatus.success,
                ),
              ),
            ),
          ),
        );
      } else {
        emit(BaseState.error(
            data: BaseErrorDataModel(message: "Başlatma hatası!")));
      }
    } catch (e) {
      emit(BaseState.error(
          data: BaseErrorDataModel(message: "Bilinmeyen hata: $e")));
    }
  }
}
