
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/base_information_model.dart';
import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class InstitutesInformationModel extends BaseInformationModel<InstitutesInformationModel> with EquatableMixin {
  InstitutesInformationModel({
    this.id,
    this.title,
    this.logoUrl,
  });

  final int? id;
  final String? title;
  final String? logoUrl;

  @override
  List<Object?> get props => [
        id,
        title,
        logoUrl,
      ];

  InstitutesInformationModel copyWith({
    int? id,
    String? title,
    String? logoUrl,
  }) =>
      InstitutesInformationModel(
        id: id ?? this.id,
        title: title ?? this.title,
        logoUrl: logoUrl ?? this.logoUrl,
      );

  @override
  InstitutesInformationModel fromJson(Map<String, dynamic> json) {
    return InstitutesInformationModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      logoUrl: json['logo_url'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
