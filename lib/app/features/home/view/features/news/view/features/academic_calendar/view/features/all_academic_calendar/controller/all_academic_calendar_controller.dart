import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/controller/all_academic_calendar_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/model/all_academic_calendar_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class AllAcademicCalendarController extends BaseCubit<
    AllAcademicCalendarInitialModel,
    Object,
    Object,
    BaseState<AllAcademicCalendarInitialModel, Object, Object>> {
  AllAcademicCalendarController()
      : super(
          BaseState.loading(),
        );

  final _allAcademicCalendarRepository = AllAcademicCalendarRepository();

  @override
  Future<void> onInit() async {
    final allAcademicCalendars =
        await _allAcademicCalendarRepository.getAllAcademicCalendar();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<AllAcademicCalendarInitialModel>(
          data: AllAcademicCalendarInitialModel(
            allAcademicCalendars: allAcademicCalendars,
          ),
        ),
      ),
    );
  }
}
