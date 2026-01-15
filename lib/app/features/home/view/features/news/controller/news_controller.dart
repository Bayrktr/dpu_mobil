import 'package:dpu_mobil/app/features/home/view/features/news/model/news_view_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';

class NewsController extends BaseCubit<NewsViewModel, Object, Object,
    BaseState<NewsViewModel, Object, Object>> {
  NewsController() : super(BaseState.initial());

  @override
  Future<void> onInit() async {}
}
