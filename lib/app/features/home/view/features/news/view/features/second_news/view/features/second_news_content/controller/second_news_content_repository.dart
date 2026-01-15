import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/second_news_content/model/news_content_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/news_dummy.dart';

final class SecondNewsContentRepository {
  SecondNewsContentRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<NewsContentModel> getNewsContent() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    final response = newsContent;
    return  NewsContentModel().fromJson(response);
  }
}
