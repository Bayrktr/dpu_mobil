import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/all_second_news/model/news_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/news_dummy.dart';

final class AllSecondNewsRepository{
  AllSecondNewsRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<List<NewsModel?>> getAllNews() async{ // fixme burayı düzenle
    final response = allNews;
    return response.map((e) => NewsModel().fromJson(e)).toList();
  }


}