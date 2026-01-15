import 'package:auto_route/auto_route.dart';

enum RoutePath<T> {
  splash('/'),
  home('/home'),
  news('news'),
  bus('bus'),
  search('search'),
  map('map'),
  profile('profile'),
  allProfile('allProfile'),
  curriculumCourses('curriculumCourses'),
  examSchedule('examSchedule'),
  obsAttendanceReport('obsAttendanceReport'),
  obsCourseAnnouncement('obsCourseAnnouncement'),
  studentInformation('studentInformation'),
  syllabus('syllabus'),
  termCourses('termCourses'),
  transcript('transcript'),
  newsAll('newsAll'),
  events('events'),
  allEvents('allEvents'),
  eventContent('eventContent'),
  portal('portal'),
  secondNews('secondNews'),
  allSecondNews('allSecondNews'),
  secondNewsContent('secondNewsContent'),
  academicCalendar('academicCalendar'),
  allAcademicCalendar('allAcademicCalendar'),
  academicCalendarContent('academicCalendarContent'),
  information('information'),
  allInformation('allInformation'),
  informationContent('informationContent'),
  magazine('magazine'),
  allMagazine('allMagazine'),
  magazineContent('magazineContent'),
  prayerTimes('prayerTimes'),
  radio('radio'),
  telephoneDirectory('telephoneDirectory'),
  foodMenu('foodMenu'),
  announcements('announcements'),
  allAnnouncements('allAnnouncements'),
  annoncementsContent('announcementsContent'),
  login('/login'),
  signIn('signIn'),
  ;

  const RoutePath(this.path);

  final String path;

  String get getPath => path;

  PageRouteInfo<T> get pageRouteInfo => PageRouteInfo(path);
}
