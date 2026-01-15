import 'package:dpu_mobil/app/features/home/view/features/news/view/features/telephone_directory/model/telephone_directory_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/telephone_directory_dummy.dart';

final class TelephoneDirectoryRepository {
  TelephoneDirectoryRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<List<TelephoneDirectoryModel?>> getTelephoneDirectorys() async {
    final response = telephoneDirectorys;
    await Future.delayed(
      Duration(
        seconds: 1,
      ),
    );
    return response.map((e) => TelephoneDirectoryModel().fromJson(e))
        .toList();
  }
}
