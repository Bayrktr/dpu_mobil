import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/event_content/model/event_content_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/events_dummy.dart';

final class EventContentRepository {
  EventContentRepository();

  final DioService _dioService = GetItManager.getIt<DioService>();

  Future<EventContentModel?> getEventContent() async {
    // sonra gerçeği ile değiş
    final response = eventContentDummy;
    return EventContentModel().fromJson(response);
  }
}
