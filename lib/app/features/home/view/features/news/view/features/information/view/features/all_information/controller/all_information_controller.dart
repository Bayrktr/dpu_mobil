import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/controller/all_information_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/all_information_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/colleges_information_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/faculties_information_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/institutes_information_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

class AllInformationController extends BaseCubit<AllInformationInitialModel,
    Object, Object, BaseState<AllInformationInitialModel, Object, Object>> {
  AllInformationController() : super(BaseState.loading());

  final _allInformationRepository = AllInformationRepository();

  @override
  Future<void> onInit() async {
    final results = await Future.wait([
      _allInformationRepository.getInstitutesInformationModel(),
      _allInformationRepository.getFacultiesInformationModel(),
      _allInformationRepository.getCollegesInformationModel(),
    ]);

    final institutesInformation =
        results[0] as List<InstitutesInformationModel?>;
    final facultiesInformation = results[1] as List<FacultiesInformationModel?>;
    final collegesInformation = results[2] as List<CollegesInformationModel?>;
    emit(
      BaseState.initial(
        data: BaseInitialDataModel<AllInformationInitialModel>(
          data: AllInformationInitialModel(
            institutesInformation: institutesInformation,
            facultiesInformation: facultiesInformation,
            collegesInformation: collegesInformation,
          ),
        ),
      ),
    );
  }
}
