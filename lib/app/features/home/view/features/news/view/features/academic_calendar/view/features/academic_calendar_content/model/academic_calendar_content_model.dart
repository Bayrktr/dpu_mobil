import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class AcademicCalendarContentModel
    extends BaseModel<AcademicCalendarContentModel> with EquatableMixin {
  AcademicCalendarContentModel({
    this.id,
    this.title,
    this.url,
  });

  final int? id;
  final String? title;
  final String? url;

  @override
  List<Object?> get props => [
        id,
        title,
        url,
      ];

  AcademicCalendarContentModel copyWith({
    int? id,
    String? title,
    String? url,
  }) =>
      AcademicCalendarContentModel(
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
      );

  @override
  AcademicCalendarContentModel fromJson(Map<String, dynamic> json) {
    return AcademicCalendarContentModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
