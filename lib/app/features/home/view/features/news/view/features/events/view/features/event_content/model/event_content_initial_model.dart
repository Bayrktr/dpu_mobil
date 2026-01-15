import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/event_content/model/event_content_model.dart';
import 'package:equatable/equatable.dart';

class EventContentInitialModel with EquatableMixin {
  EventContentInitialModel({this.eventContent});

  final EventContentModel? eventContent;

  @override
  List<Object?> get props => [eventContent];

  EventContentInitialModel copyWith({EventContentModel? eventContent}) =>
      EventContentInitialModel(
        eventContent: eventContent ?? this.eventContent,
      );
}
