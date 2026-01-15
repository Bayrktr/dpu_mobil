import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/all_announcements/controller/all_announcements_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/all_announcements/model/all_announcements_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class AllAnnouncementsController extends BaseCubit<AllAnnouncementsInitialModel,
    Object, Object, BaseState<AllAnnouncementsInitialModel, Object, Object>> {
  AllAnnouncementsController() : super(BaseState.loading());

  final _allAnnouncementsRepository = AllAnnouncementsRepository();

  @override
  Future<void> onInit() async {
    final allAnnouncements =
        await _allAnnouncementsRepository.getAllAnnouncements();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<AllAnnouncementsInitialModel>(
          data: AllAnnouncementsInitialModel(
            allAnnouncements: allAnnouncements,
          ),
        ),
      ),
    );
  }
}
