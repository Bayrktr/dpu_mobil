import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class FoodModel extends BaseModel<FoodModel> with EquatableMixin {
  FoodModel({
    this.id,
    this.name,
    this.kcal,
  });

  final int? id;
  final String? name;
  final double? kcal;

  @override
  List<Object?> get props => [
        id,
        name,
        kcal,
      ];

  FoodModel copyWith({
    int? id,
    String? name,
    double? kcal,
  }) =>
      FoodModel(
        id: id ?? this.id,
        name: name ?? this.name,
        kcal: kcal ?? this.kcal,
      );

  @override
  FoodModel fromJson(Map<String, dynamic> json) {
    return FoodModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      kcal: json['kcal'] as double?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
