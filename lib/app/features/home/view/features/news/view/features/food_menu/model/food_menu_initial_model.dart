import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/model/food_menu_model.dart';
import 'package:equatable/equatable.dart';

class FoodMenuInitialModel with EquatableMixin {
  const FoodMenuInitialModel({
    this.foodMenus = const [],
    this.currentFoodMenuIndex = 0,
  });

  final List<FoodMenuModel?> foodMenus;
  final int currentFoodMenuIndex;

  @override
  List<Object?> get props => [
        foodMenus,
        currentFoodMenuIndex,
      ];

  FoodMenuInitialModel copyWith({
    List<FoodMenuModel?>? foodMenus,
    int? currentFoodMenuIndex,
  }) =>
      FoodMenuInitialModel(
        foodMenus: foodMenus ?? this.foodMenus,
        currentFoodMenuIndex: currentFoodMenuIndex ?? this.currentFoodMenuIndex,
      );
}
