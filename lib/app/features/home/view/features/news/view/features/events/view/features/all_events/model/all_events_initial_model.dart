import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/all_events/model/events_model.dart';
import 'package:equatable/equatable.dart';

class AllEventsInitialModel with EquatableMixin {
  AllEventsInitialModel({
    this.allEvents = const [],
  });

  final List<EventsModel?> allEvents;

  @override
  List<Object?> get props => [allEvents];

  AllEventsInitialModel copyWith({List<EventsModel?>? allEvents}) =>
      AllEventsInitialModel(
        allEvents: allEvents ?? this.allEvents,
      );
}
