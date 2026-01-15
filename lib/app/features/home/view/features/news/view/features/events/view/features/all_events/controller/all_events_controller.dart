import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/all_events/controller/all_events_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/all_events/model/all_events_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class AllEventsController extends BaseCubit<AllEventsInitialModel, Object,
    Object, BaseState<AllEventsInitialModel, Object, Object>> {
  AllEventsController() : super(BaseState.loading());

  final _allEventsRepository = AllEventsRepository();

  @override
  Future<void> onInit() async {
    await Future.delayed(Duration(seconds: 1));
    final allEvents = await _allEventsRepository.getEvents();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<AllEventsInitialModel>(
          data: AllEventsInitialModel(
            allEvents: allEvents,
          ),
        ),
      ),
    );
  }
}
