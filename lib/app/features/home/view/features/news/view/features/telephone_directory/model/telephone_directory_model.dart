import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class TelephoneDirectoryModel extends BaseModel<TelephoneDirectoryModel>
    with EquatableMixin {
  TelephoneDirectoryModel({
    this.id,
    this.title,
    this.phoneNumber,
  });

  final int? id;
  final String? title;
  final String? phoneNumber;

  @override
  List<Object?> get props => [
        id,
        title,
        phoneNumber,
      ];

  TelephoneDirectoryModel copyWith({
    int? id,
    String? title,
    String? phoneNumber,
  }) =>
      TelephoneDirectoryModel(
        id: id ?? this.id,
        title: title ?? this.title,
        phoneNumber: phoneNumber ?? this.phoneNumber,
      );

  @override
  TelephoneDirectoryModel fromJson(Map<String, dynamic> json) {
    return TelephoneDirectoryModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
