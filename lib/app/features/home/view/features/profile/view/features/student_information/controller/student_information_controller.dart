import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/student_information/controller/student_information_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/student_information/model/student_information_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class StudentInformationController extends BaseCubit<
    StudentInformationInitialModel,
    Object,
    Object,
    BaseState<StudentInformationInitialModel, Object, Object>> {
  StudentInformationController() : super(BaseState.loading());

  final _studentInformationRepository = StudentInformationRepository();

  @override
  Future<void> onInit() async {
    final studentInformation =
        await _studentInformationRepository.getStudentInformation();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<StudentInformationInitialModel>(
          data: StudentInformationInitialModel(
            studentInformation: studentInformation,
          ),
        ),
      ),
    );
  }
}
