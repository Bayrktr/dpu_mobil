import 'package:dpu_mobil/app/product/navigation/model/splash/splash_navigation_model.dart';
import 'package:equatable/equatable.dart';

class SplashModel with EquatableMixin {
  SplashModel({this.navigate});

  final SplashNavigationModel? navigate;

  @override
  List<Object?> get props => [navigate];

  SplashModel copyWith({SplashNavigationModel? navigate}) => SplashModel(
        navigate: navigate ?? this.navigate,
      );
}
