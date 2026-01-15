import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class EventContentModel extends BaseModel<EventContentModel>
    with EquatableMixin {
  EventContentModel({
    this.id,
    this.title,
    this.message,
    this.datetimeFrom,
    this.datetimeTo,
    this.eventOwner,
    this.eventLocation,
    this.speakers = const [],
  });

  final int? id;
  final String? title;
  final String? message;
  final String? datetimeFrom;
  final String? datetimeTo;
  final String? eventOwner;
  final String? eventLocation;
  final List<String?> speakers;

  @override
  List<Object?> get props => [
        id,
        title,
        message,
        datetimeFrom,
        datetimeTo,
        eventOwner,
        eventLocation,
        speakers,
      ];

  @override
  BaseModel<EventContentModel> copyWith({
    int? id,
    String? title,
    String? message,
    String? datetimeFrom,
    String? datetimeTo,
    String? eventOwner,
    String? eventLocation,
    List<String?>? speakers,
  }) =>
      EventContentModel(
        id: id ?? this.id,
        title: title ?? this.title,
        message: message ?? this.message,
        datetimeFrom: datetimeFrom ?? this.datetimeFrom,
        datetimeTo: datetimeTo ?? this.datetimeTo,
        eventOwner: eventOwner ?? this.eventOwner,
        eventLocation: eventLocation ?? this.eventLocation,
        speakers: speakers ?? this.speakers,
      );

  @override
  EventContentModel fromJson(Map<String, dynamic> json) {
    return EventContentModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      datetimeFrom: json['datetime_from'] as String?,
      datetimeTo: json['datetime_to'] as String?,
      eventOwner: json['event_owner'] as String?,
      eventLocation: json['event_location'] as String?,
      speakers: json['speakers'] as List<String?>,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
