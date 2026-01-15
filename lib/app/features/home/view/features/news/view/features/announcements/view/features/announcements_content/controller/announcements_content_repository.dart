import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/announcements_content/model/announcement_content_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/announcements_dummy.dart';

final class AnnouncementsContentRepository {
  AnnouncementsContentRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<AnnouncementContentModel?> getAnnouncementContent() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    final response = announcementContent;
    return AnnouncementContentModel().fromJson(
      response,
    );
  }
}
