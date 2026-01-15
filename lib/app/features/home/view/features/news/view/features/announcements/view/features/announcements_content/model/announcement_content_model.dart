import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class AnnouncementContentModel extends BaseModel<AnnouncementContentModel>
    with EquatableMixin {
  AnnouncementContentModel({
    this.id,
    this.title,
    this.message,
    this.datetime,
  });

  final int? id;
  final String? title;
  final String? message;
  final String? datetime;

  @override
  List<Object?> get props => [
        id,
        title,
        message,
        datetime,
      ];

  AnnouncementContentModel copyWith({
    int? id,
    String? title,
    String? message,
    String? datetime,
  }) =>
      AnnouncementContentModel(
        id: id ?? this.id,
        title: title ?? this.title,
        message: message ?? this.message,
        datetime: datetime ?? this.datetime,
      );

  @override
  AnnouncementContentModel fromJson(Map<String, dynamic> json) {
    return AnnouncementContentModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      datetime: json['datetime'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
