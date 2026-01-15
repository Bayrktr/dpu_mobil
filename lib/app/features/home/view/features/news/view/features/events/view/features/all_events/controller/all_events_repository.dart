import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/all_events/model/events_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/events_dummy.dart';

final class AllEventsRepository {
  AllEventsRepository();

  final DioService _dioService = GetItManager.getIt<DioService>();

  Future<List<EventsModel?>> getEvents() async {
    // sonrasında gerçeği ile değiştir
    final response = eventsDummy;
    return response.map((e) => EventsModel().fromJson(e)).toList();
  }
}
