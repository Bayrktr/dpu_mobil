import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class AcademicCalendarModel extends BaseModel<AcademicCalendarModel>
    with EquatableMixin {
  AcademicCalendarModel({
    this.id,
    this.title,
  });

  final int? id;
  final String? title;

  @override
  List<Object?> get props => [
        id,
        title,
      ];

  AcademicCalendarModel copyWith({
    int? id,
    String? title,
  }) =>
      AcademicCalendarModel(
        id: id ?? this.id,
        title: title ?? this.title,
      );

  @override
  AcademicCalendarModel fromJson(Map<String, dynamic> json) {
    return AcademicCalendarModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
