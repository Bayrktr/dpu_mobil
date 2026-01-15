import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/student_information/model/student_information_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/student_information_dummy.dart';

final class StudentInformationRepository {
  StudentInformationRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<StudentInformationModel?> getStudentInformation() async {
    final response = studentInformation;
    await Future.delayed(
      Duration(
        seconds: 1,
      ),
    );
    return StudentInformationModel().fromJson(response);
  }
}
