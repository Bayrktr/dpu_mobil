import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/model/food_menu_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/food_menu_dummy.dart';

final class FoodMenuRepository {
  FoodMenuRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<List<FoodMenuModel?>> getFoodMenus() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    final response = foodMenus;
    return response.map((e) => FoodMenuModel().fromJson(e)).toList();
  }
}
