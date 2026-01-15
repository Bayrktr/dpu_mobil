import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/base_information_model.dart';
import 'package:equatable/equatable.dart';

class FacultiesInformationModel
    extends BaseInformationModel<FacultiesInformationModel>
    with EquatableMixin {
  FacultiesInformationModel({
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

  FacultiesInformationModel copyWith({
    int? id,
    String? title,
    String? logoUrl,
  }) =>
      FacultiesInformationModel(
        id: id ?? this.id,
        title: title ?? this.title,
        logoUrl: logoUrl ?? this.logoUrl,
      );

  @override
  FacultiesInformationModel fromJson(Map<String, dynamic> json) {
    return FacultiesInformationModel(
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
