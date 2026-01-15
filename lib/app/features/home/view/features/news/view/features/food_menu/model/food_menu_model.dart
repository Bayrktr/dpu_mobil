import 'package:dpu_mobil/app/features/home/view/features/news/view/features/food_menu/view/component/item/food_menu_table/model/food_model.dart';
import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class FoodMenuModel extends BaseModel<FoodMenuModel> with EquatableMixin {
  FoodMenuModel({
    this.id,
    this.datetime,
    this.foods = const [],
  });

  final int? id;
  final String? datetime;
  final List<FoodModel?> foods;

  @override
  List<Object?> get props => [
        id,
        datetime,
        foods,
      ];

  FoodMenuModel copyWith({
    int? id,
    String? datetime,
    List<FoodModel?>? foods,
  }) =>
      FoodMenuModel(
        id: id ?? this.id,
        datetime: datetime ?? this.datetime,
        foods: foods ?? this.foods,
      );

  @override
  FoodMenuModel fromJson(Map<String, dynamic> json) {
    return FoodMenuModel(
      id: json['id'] as int?,
      datetime: json['datetime'] as String?,
      foods: (json['foods'] as List<dynamic>?)
              ?.map(
                (e) => e == null
                    ? null
                    : FoodModel().fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
