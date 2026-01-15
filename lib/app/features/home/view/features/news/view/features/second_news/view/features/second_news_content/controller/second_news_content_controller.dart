import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/second_news_content/controller/second_news_content_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/second_news_content/model/second_news_content_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class SecondNewsContentController extends BaseCubit<
    SecondNewsContentInitialModel,
    Object,
    Object,
    BaseState<SecondNewsContentInitialModel, Object, Object>> {
  SecondNewsContentController() : super(BaseState.loading());

  final _secondNewsContentRepository = SecondNewsContentRepository();

  @override
  Future<void> onInit() async {
    final newsContent = await _secondNewsContentRepository.getNewsContent();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<SecondNewsContentInitialModel>(
          data: SecondNewsContentInitialModel(
            newsContent: newsContent,
          ),
        ),
      ),
    );
  }
}
