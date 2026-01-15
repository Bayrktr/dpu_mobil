import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/colleges_information_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/faculties_information_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/institutes_information_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/information_dummy.dart';

final class AllInformationRepository {
  AllInformationRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<List<CollegesInformationModel?>> getCollegesInformationModel() async {
    final response = collegesInformations;
    await Future.delayed(Duration(
      seconds: 1,
      microseconds: 500,
    ));
    return response.map((e) => CollegesInformationModel().fromJson(e)).toList();
  }

  Future<List<InstitutesInformationModel?>>
      getInstitutesInformationModel() async {
    final response = collegesInformations;
    await Future.delayed(Duration(
      seconds: 1,
      microseconds: 200,
    ));
    return response
        .map((e) => InstitutesInformationModel().fromJson(e))
        .toList();
  }

  Future<List<FacultiesInformationModel?>>
      getFacultiesInformationModel() async {
    final response = collegesInformations;
    await Future.delayed(Duration(
      seconds: 1,
      microseconds: 100,
    ));
    return response
        .map((e) => FacultiesInformationModel().fromJson(e))
        .toList();
  }
}
