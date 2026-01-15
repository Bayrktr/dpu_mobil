import 'package:dpu_mobil/app/features/home/view/features/news/view/features/telephone_directory/controller/telephone_directory_repository.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/telephone_directory/model/telephone_directory_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/telephone_directory/model/telephone_directory_model.dart';
import 'package:dpu_mobil/app/product/algorithms/levenshtein/levenshtein_algorithm.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_cubit.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';

part 'mixin/telephone_directory_controller_mixin.dart';

class TelephoneDirectoryController extends BaseCubit<
    TelephoneDirectoryInitialModel,
    Object,
    Object,
    BaseState<TelephoneDirectoryInitialModel, Object, Object>> {
  TelephoneDirectoryController._(this.id) : super(BaseState.loading());

  final int id;

  static final Map<int, TelephoneDirectoryController> _cache = {};

  factory TelephoneDirectoryController(int id) {
    return _cache.putIfAbsent(id, () => TelephoneDirectoryController._(id));
  }

  final _telephoneDirectoryRepository = TelephoneDirectoryRepository();

  final TextEditingController _telephoneTextEditingController =
      TextEditingController();

  TextEditingController get telephoneTextEditingController =>
      _telephoneTextEditingController;

  @override
  Future<void> onInit() async {
    final telephoneDirectorys =
        await _telephoneDirectoryRepository.getTelephoneDirectorys();
    emit(
      BaseState.initial(
        data: BaseInitialDataModel(
          data: TelephoneDirectoryInitialModel(
            telephoneDirectorys: telephoneDirectorys,
            searchTelephoneDirectorys: telephoneDirectorys,
          ),
        ),
      ),
    );
  }

  void updateTelephoneTextEditingController(String? value) {
    if (value == null) return;
    final result = _telephoneDirectorysResultList(value);

    emit(
      BaseState.initial(
        data: BaseInitialDataModel<TelephoneDirectoryInitialModel>(
          data: initialData?.data?.copyWith(
            searchTelephoneDirectorys: result,
          ),
        ),
      ),
    );
    _telephoneTextEditingController.text = value;
  }

  List<TelephoneDirectoryModel?> _telephoneDirectorysResultList(String value) {
    if (!isInitial) return [];

    final query = value.toLowerCase();
    final telephoneDirectorys = initialData?.data?.telephoneDirectorys ?? [];

    final results = telephoneDirectorys.where((model) {
      final name = model?.title;
      if (name == null) return false;

      final lowerName = name.toLowerCase();

      final distance = LevenshteinAlgorithm(
        string1: query,
        string2: lowerName,
      ).levenshteinDistance;

      return distance <= 2 || lowerName.contains(query);
    }).toList();

    return results;
  }
}
