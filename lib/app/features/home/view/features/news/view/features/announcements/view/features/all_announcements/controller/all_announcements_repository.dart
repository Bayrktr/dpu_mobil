import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/all_announcements/model/announcement_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/announcements_dummy.dart';

final class AllAnnouncementsRepository {
  AllAnnouncementsRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<List<AnnouncementModel?>> getAllAnnouncements() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    final response = announcements;
    return response.map((e) => AnnouncementModel().fromJson(e)).toList();
  }
}
