import 'package:dpu_mobil/app/features/home/model/home_navigate_models.dart';
import 'package:equatable/equatable.dart';

class HomeInitialModel with EquatableMixin {
  HomeInitialModel({
    this.navigate = const HomeNoneNavigateModel(),
  });

  final HomeNavigateModel navigate;

  @override
  List<Object?> get props => [
        navigate,
      ];

  HomeInitialModel copyWith({
    HomeNavigateModel? navigate,
  }) =>
      HomeInitialModel(
        navigate: navigate ?? this.navigate,
      );
}
