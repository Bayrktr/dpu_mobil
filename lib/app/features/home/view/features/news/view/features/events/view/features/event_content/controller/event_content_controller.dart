import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/event_content/controller/event_content_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/event_content/model/event_content_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventContentController extends BaseCubit<EventContentInitialModel, Object,
    Object, BaseState<EventContentInitialModel, Object, Object>> {
  EventContentController() : super(BaseState.loading());

  final _eventContentRepository = EventContentRepository();

  @override
  Future<void> onInit() async {
    await Future.delayed(Duration(seconds: 1));
    final eventContent = await _eventContentRepository.getEventContent();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<EventContentInitialModel>(
          data: EventContentInitialModel(
            eventContent: eventContent,
          ),
        ),
      ),
    );
  }
}
