import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/academic_calendar_content/model/academic_calendar_content_model.dart';
import 'package:equatable/equatable.dart';

class AcademicCalendarContentInitialModel with EquatableMixin {
  AcademicCalendarContentInitialModel({
    this.academicCalendarContent = const [],
  });

  final List<AcademicCalendarContentModel?> academicCalendarContent;

  @override
  List<Object?> get props => [
        academicCalendarContent,
      ];

  AcademicCalendarContentInitialModel copyWith({
    List<AcademicCalendarContentModel?>? academicCalendarContent,
  }) =>
      AcademicCalendarContentInitialModel(
        academicCalendarContent:
            academicCalendarContent ?? this.academicCalendarContent,
      );
}
