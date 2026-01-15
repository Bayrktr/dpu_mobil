import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/announcements_content/controller/announcements_content_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/announcements_content/model/announcements_content_initial_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class AnnouncementsContentController extends BaseCubit<
    AnnouncementsContentInitialModel,
    Object,
    Object,
    BaseState<AnnouncementsContentInitialModel, Object, Object>> {
  AnnouncementsContentController() : super(BaseState.loading());

  final _announcementContentRepository = AnnouncementsContentRepository();

  @override
  Future<void> onInit() async {
    final announcementContent =
        await _announcementContentRepository.getAnnouncementContent();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<AnnouncementsContentInitialModel>(
          data: AnnouncementsContentInitialModel(
            announcementContent: announcementContent,
          ),
        ),
      ),
    );
  }
}
