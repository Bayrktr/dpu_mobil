import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class AnnouncementModel extends BaseModel<AnnouncementModel>
    with EquatableMixin {
  AnnouncementModel({
    this.id,
    this.title,
    this.datetime,
  });

  final int? id;
  final String? title;
  final String? datetime;

  @override
  List<Object?> get props => [
        id,
        title,
    datetime,
      ];

  AnnouncementModel copyWith({
    int? id,
    String? title,
    String? datetime,
  }) =>
      AnnouncementModel(
        id: id ?? this.id,
        title: title ?? this.title,
        datetime: datetime ?? this.datetime,
      );

  @override
  AnnouncementModel fromJson(Map<String, dynamic> json) {
    return AnnouncementModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      datetime: json['datetime'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
