import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/all_second_news/controller/all_second_news_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/all_second_news/model/all_second_news_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class AllSecondNewsController extends BaseCubit<AllSecondNewsInitialModel,
    Object, Object, BaseState<AllSecondNewsInitialModel, Object, Object>> {
  AllSecondNewsController() : super(BaseState.loading());

  final _allSecondNewsRepository = AllSecondNewsRepository();

  @override
  Future<void> onInit() async {
    await Future.delayed(Duration(seconds: 1));
    final allNews = await _allSecondNewsRepository.getAllNews();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel(
          data: AllSecondNewsInitialModel(
            allNews: allNews,
          ),
        ),
      ),
    );
  }
}
