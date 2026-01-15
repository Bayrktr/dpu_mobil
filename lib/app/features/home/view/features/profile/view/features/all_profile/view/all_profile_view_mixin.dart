part of 'all_profile_view.dart';


mixin _AllProfileViewMixin on StatelessWidget{
  final List<HomeViewPageSelectionContainerModel<dynamic>> _items = [
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.profile_page_student_information.lang.tr,
      iconData: Icons.person,
      routeInfo: StudentInformationRoute(),
    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.profile_page_transcript.lang.tr,
      iconData: Icons.message,
      routeInfo: TranscriptRoute(),
    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.profile_page_syllabus.lang.tr,
      iconData: Icons.calendar_month_outlined,
      routeInfo: SyllabusRoute(),
    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.profile_page_exam_schedule.lang.tr,
      iconData: Icons.calendar_month_outlined,
      routeInfo: ExamScheduleRoute(),
    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.profile_page_term_courses.lang.tr,
      iconData: Icons.calendar_month_outlined,
      routeInfo: TermCoursesRoute(),
    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.profile_page_curriculum_courses.lang.tr,
      iconData: Icons.calendar_month_outlined,
      routeInfo: CurriculumCoursesRoute(),
    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.profile_page_obs_course_announcement.lang.tr,
      iconData: Icons.announcement_outlined,
      routeInfo: ObsCourseAnnouncementRoute(),
    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.profile_page_obs_attendance_report.lang.tr,
      iconData: Icons.announcement_outlined,
      routeInfo: ObsAttendanceReportRoute(),
    ),
  ];
}