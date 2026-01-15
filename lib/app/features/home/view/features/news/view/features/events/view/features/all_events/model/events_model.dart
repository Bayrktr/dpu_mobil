import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class EventsModel extends BaseModel<EventsModel> with EquatableMixin {
  EventsModel({this.id, this.title, this.message, this.dateTime});

  final int? id;
  final String? title;
  final String? message;
  final String? dateTime;

  @override
  List<Object?> get props => [
        id,
        title,
        message,
        dateTime,
      ];

  EventsModel copyWith({
    int? id,
    String? title,
    String? message,
    String? dateTime,
  }) =>
      EventsModel(
        id: id ?? this.id,
        title: title ?? this.title,
        message: message ?? this.message,
        dateTime: dateTime ?? this.dateTime,
      );

  @override
  EventsModel fromJson(Map<String, dynamic> json) {
    return EventsModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      message:  json['message'] as String?,
      dateTime: json['datetime'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
