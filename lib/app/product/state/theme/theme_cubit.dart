import 'package:dpu_mobil/app/product/cache/hive/operation/theme_operation.dart';
import 'package:dpu_mobil/app/product/constant/theme/all_themes.dart';
import 'package:dpu_mobil/app/product/manager/getIt/getIt_manager.dart';
import 'package:dpu_mobil/app/product/state/theme/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState()) {
    onInit();
  }

  final ThemeOperation _themeOperation = GetItManager.getIt<ThemeOperation>();

  Future<void> onInit() async {
    final theme = _themeOperation.getItem(AllThemes.value);
    emit(
      state.copyWith(
        selectedTheme: theme ?? StandartTheme(),
      ),
    );
  }
}
