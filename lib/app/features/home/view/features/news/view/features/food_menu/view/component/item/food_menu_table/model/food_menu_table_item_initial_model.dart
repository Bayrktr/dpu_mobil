import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/view/component/item/food_menu_table/model/food_model.dart';
import 'package:equatable/equatable.dart';

class FoodMenuTableItemInitialModel with EquatableMixin {
  FoodMenuTableItemInitialModel({
    this.foods = const [],
  });

  final List<FoodModel?> foods;

  @override
  List<Object?> get props => [
        foods,
      ];

  FoodMenuTableItemInitialModel copyWith({
    List<FoodModel?>? foods,
  }) =>
      FoodMenuTableItemInitialModel(
        foods: foods ?? this.foods,
      );
}
