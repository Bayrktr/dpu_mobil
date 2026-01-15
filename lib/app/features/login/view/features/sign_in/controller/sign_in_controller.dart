import 'package:dpu_mobil/app/features/login/view/features/sign_in/model/sign_in_initial_model.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class SignInController extends BaseCubit<SignInInitialModel, Object, Object,
    BaseState<SignInInitialModel, Object, Object>> {
  SignInController()
      : super(
          BaseState.loading(),
        );

  final TextEditingController _userNameTextEditingController =
      TextEditingController();

  TextEditingController get userNameTextEditingController =>
      _userNameTextEditingController;

  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  TextEditingController get passwordTextEditingController =>
      _passwordTextEditingController;

  void updateUserNameController(String? value){
    if(value == null) return;
    _userNameTextEditingController.text = value;
  }

  void updatePasswordController(String? value){
    if(value == null) return;
    _passwordTextEditingController.text = value;
  }

  void changePasswordShow() {
    if (isInitial) {
      emit(
        BaseState.initial(
          data: BaseInitialDataModel<SignInInitialModel>(
            data: initialData?.data?.copyWith(
              isShowPassword:
                  (initialData?.data?.isShowPassword ?? false) ? false : true,
            ),
          ),
        ),
      );
      print(initialData?.data?.isShowPassword);
    }
  }

  void changeRememberMe() {
    if (isInitial) {
      emit(
        BaseState.initial(
          data: BaseInitialDataModel<SignInInitialModel>(
            data: initialData?.data?.copyWith(
              isRememberMe:
              (initialData?.data?.isRememberMe ?? false) ? false : true,
            ),
          ),
        ),
      );
      print(initialData?.data?.isRememberMe);
    }
  }

  @override
  Future<void> onInit() async {
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<SignInInitialModel>(
          data: SignInInitialModel(),
        ),
      ),
    );
  }
}
