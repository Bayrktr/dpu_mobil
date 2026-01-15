import 'package:dpu_mobil/app/product/constant/theme/all_themes.dart';
import 'package:equatable/equatable.dart';

class ThemeState with EquatableMixin {
  ThemeState({this.selectedTheme}) {
    selectedTheme = StandartTheme();
  }

  AllThemes? selectedTheme;

  @override
  List<Object?> get props => [
        selectedTheme,
      ];

  ThemeState copyWith({AllThemes? selectedTheme}) => ThemeState(
        selectedTheme: selectedTheme ?? this.selectedTheme,
      );
}
