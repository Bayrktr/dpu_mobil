import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/academic_calendar_content/controller/academic_calendar_content_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/academic_calendar_content/model/academic_calendar_content_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/model/academic_calendar_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class AcademicCalendarContentController extends BaseCubit<
    AcademicCalendarContentInitialModel,
    Object,
    Object,
    BaseState<AcademicCalendarContentInitialModel, Object, Object>> {
  AcademicCalendarContentController(this.item) : super(BaseState.loading());

  final AcademicCalendarModel? item;

  final _academicCalendarContentRepository =
      AcademicCalendarContentRepository();

  @override
  Future<void> onInit() async {
    if (item == null) {
      emit(
        BaseState.error(),
      );
    }

    final academicCalendarContent =
        await _academicCalendarContentRepository.getAcademicCalenderContent();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel(
          data: AcademicCalendarContentInitialModel(
            academicCalendarContent: academicCalendarContent,
          ),
        ),
      ),
    );
  }
}
