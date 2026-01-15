import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/academic_calendar_content/model/academic_calendar_content_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/academic_calendar_dummy.dart';

final class AcademicCalendarContentRepository {
  AcademicCalendarContentRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<List<AcademicCalendarContentModel?>>
      getAcademicCalenderContent() async {
    final response = academicCalendarContent;
    await Future.delayed(Duration(seconds: 1));
    return response
        .map((e) => AcademicCalendarContentModel().fromJson(e))
        .toList();
  }
}
