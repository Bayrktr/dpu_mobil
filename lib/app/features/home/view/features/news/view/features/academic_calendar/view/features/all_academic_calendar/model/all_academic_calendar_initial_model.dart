import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/model/academic_calendar_model.dart';
import 'package:equatable/equatable.dart';

class AllAcademicCalendarInitialModel with EquatableMixin {
  AllAcademicCalendarInitialModel({
    this.allAcademicCalendars = const [],
  });

  final List<AcademicCalendarModel?> allAcademicCalendars;

  @override
  List<Object?> get props => [
        allAcademicCalendars,
      ];

  AllAcademicCalendarInitialModel copyWith({
    List<AcademicCalendarModel?>? allAcademicCalendars,
  }) =>
      AllAcademicCalendarInitialModel(
        allAcademicCalendars: allAcademicCalendars ?? this.allAcademicCalendars,
      );
}
