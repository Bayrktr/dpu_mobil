import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/model/academic_calendar_model.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/service/dio_service/dio_service.dart';
import 'package:dpu_mobil/dummy/academic_calendar_dummy.dart';

final class AllAcademicCalendarRepository{
  AllAcademicCalendarRepository();

  final _dioService = GetItManager.getIt<DioService>();

  Future<List<AcademicCalendarModel?>> getAllAcademicCalendar() async{
    final response = academicCalanders;
    await Future.delayed(Duration(seconds: 1));
    return response.map((e) => AcademicCalendarModel().fromJson(e)).toList();
  }
}