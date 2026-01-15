import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/base_information_model.dart';
import 'package:equatable/equatable.dart';


class CollegesInformationModel
    extends BaseInformationModel<CollegesInformationModel> with EquatableMixin {
  CollegesInformationModel({
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

  CollegesInformationModel copyWith({
    int? id,
    String? title,
    String? logoUrl,
  }) =>
      CollegesInformationModel(
        id: id ?? this.id,
        title: title ?? this.title,
        logoUrl: logoUrl ?? this.logoUrl,
      );

  @override
  CollegesInformationModel fromJson(Map<String, dynamic> json) {
    return CollegesInformationModel(
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
