import 'package:dpu_mobil/app/features/home/view/features/news/view/features/academic_calendar/view/features/all_academic_calendar/model/academic_calendar_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/all_profile/view/all_profile_view.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/curriculum_courses/view/curriculum_courses_view.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/exam_schedule/view/exam_schedule_view.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/obs_attendance_report/view/obs_attendance_report_view.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/obs_course_announcement/view/obs_course_announcement_view.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/student_information/view/student_information_view.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/syllabus/view/syllabus_view.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/term_courses/view/term_courses_view.dart';
import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/transcript/view/transcript_view.dart';
import 'package:dpu_mobil/app/features/login/view/features/sign_in/view/sign_in_view.dart';
import 'package:dpu_mobil/app/features/login/view/login_view.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute<SplashRoute>(
          page: SplashRoute.page,
          path: RoutePath.splash.path,

        ),
        AdaptiveRoute<LoginRoute>(
          page: LoginRoute.page,
          path: RoutePath.login.path,
          children: [
            AdaptiveRoute<SignInRoute>(
              page: SignInRoute.page,
              path: RoutePath.signIn.path,
              initial: true,
            ),
          ],
        ),
        AdaptiveRoute<HomeRoute>(
          page: HomeRoute.page,
          path: RoutePath.home.path,
          children: [
            AdaptiveRoute<NewsRoute>(
              page: NewsRoute.page,
              path: RoutePath.news.path,
              initial: true,
              children: [
                AdaptiveRoute<NewsAllRoute>(
                  page: NewsAllRoute.page,
                  path: RoutePath.newsAll.path,
                  initial: true,
                ),
                AdaptiveRoute<AcademicCalendarRoute>(
                  page: AcademicCalendarRoute.page,
                  path: RoutePath.academicCalendar.path,
                  children: [
                    AdaptiveRoute<AllAcademicCalendarRoute>(
                      page: AllAcademicCalendarRoute.page,
                      path: RoutePath.allAcademicCalendar.path,
                      initial: true,
                    ),
                    AdaptiveRoute<AcademicCalendarContentRoute>(
                      page: AcademicCalendarContentRoute.page,
                      path: RoutePath.academicCalendarContent.path,
                    ),
                  ],
                ),
                AdaptiveRoute<AnnouncementsRoute>(
                  page: AnnouncementsRoute.page,
                  path: RoutePath.announcements.path,
                  children: [
                    AdaptiveRoute<AllAnnouncementsRoute>(
                      page: AllAnnouncementsRoute.page,
                      path: RoutePath.allAnnouncements.path,
                      initial: true,
                    ),
                    AdaptiveRoute<AnnouncementsContentRoute>(
                      page: AnnouncementsContentRoute.page,
                      path: RoutePath.annoncementsContent.path,
                    ),
                  ],
                ),
                AdaptiveRoute<EventsRoute>(
                  page: EventsRoute.page,
                  path: RoutePath.events.path,
                  children: [
                    AdaptiveRoute<AllEventsRoute>(
                      page: AllEventsRoute.page,
                      path: RoutePath.allEvents.path,
                      initial: true,
                    ),
                    AdaptiveRoute<EventContentRoute>(
                      page: EventContentRoute.page,
                      path: RoutePath.eventContent.path,
                    ),
                  ],
                ),
                AdaptiveRoute<FoodMenuRoute>(
                  page: FoodMenuRoute.page,
                  path: RoutePath.foodMenu.path,
                ),
                AdaptiveRoute<InformationRoute>(
                  page: InformationRoute.page,
                  path: RoutePath.information.path,
                  children: [
                    AdaptiveRoute<AllInformationRoute>(
                      page: AllInformationRoute.page,
                      path: RoutePath.allInformation.path,
                      initial: true,
                    ),
                    AdaptiveRoute<InformationContentRoute>(
                      page: InformationContentRoute.page,
                      path: RoutePath.informationContent.path,
                    ),
                  ],
                ),
                AdaptiveRoute<MagazineRoute>(
                  page: MagazineRoute.page,
                  path: RoutePath.magazine.path,
                  children: [
                    AdaptiveRoute<AllMagazineRoute>(
                      page: AllMagazineRoute.page,
                      path: RoutePath.allMagazine.path,
                      initial: true,
                    ),
                    AdaptiveRoute<MagazineContentRoute>(
                      page: MagazineContentRoute.page,
                      path: RoutePath.magazineContent.path,
                    ),
                  ],
                ),
                AdaptiveRoute<PortalRoute>(
                  page: PortalRoute.page,
                  path: RoutePath.portal.path,
                ),
                AdaptiveRoute<PrayerTimesRoute>(
                  page: PrayerTimesRoute.page,
                  path: RoutePath.prayerTimes.path,
                ),
                AdaptiveRoute<RadioRoute>(
                  page: RadioRoute.page,
                  path: RoutePath.radio.path,
                ),
                AdaptiveRoute<SecondNewsRoute>(
                  page: SecondNewsRoute.page,
                  path: RoutePath.secondNews.path,
                  children: [
                    AdaptiveRoute<AllSecondNewsRoute>(
                      page: AllSecondNewsRoute.page,
                      path: RoutePath.allSecondNews.path,
                      initial: true,
                    ),
                    AdaptiveRoute<SecondNewsContentRoute>(
                      page: SecondNewsContentRoute.page,
                      path: RoutePath.secondNewsContent.path,
                    ),
                  ],
                ),
                AdaptiveRoute<TelephoneDirectoryRoute>(
                  page: TelephoneDirectoryRoute.page,
                  path: RoutePath.telephoneDirectory.path,
                ),
              ],
            ),
            AdaptiveRoute<BusRoute>(
              page: BusRoute.page,
              path: RoutePath.news.path,
            ),
            AdaptiveRoute<MapRoute>(
              page: MapRoute.page,
              path: RoutePath.map.path,
            ),
            AdaptiveRoute<SearchRoute>(
              page: SearchRoute.page,
              path: RoutePath.search.path,
            ),
            AdaptiveRoute<ProfileRoute>(
              page: ProfileRoute.page,
              path: RoutePath.profile.path,
              children: [
                AdaptiveRoute<AllProfileRoute>(
                  page: AllProfileRoute.page,
                  path: RoutePath.allProfile.path,
                  initial: true,
                ),
                AdaptiveRoute<CurriculumCoursesRoute>(
                  page: CurriculumCoursesRoute.page,
                  path: RoutePath.curriculumCourses.path,
                ),
                AdaptiveRoute<ExamScheduleRoute>(
                  page: ExamScheduleRoute.page,
                  path: RoutePath.examSchedule.path,
                ),
                AdaptiveRoute<ObsAttendanceReportRoute>(
                  page: ObsAttendanceReportRoute.page,
                  path: RoutePath.obsAttendanceReport.path,
                ),
                AdaptiveRoute<ObsCourseAnnouncementRoute>(
                  page: ObsCourseAnnouncementRoute.page,
                  path: RoutePath.obsCourseAnnouncement.path,
                ),
                AdaptiveRoute<StudentInformationRoute>(
                  page: StudentInformationRoute.page,
                  path: RoutePath.studentInformation.path,
                ),
                AdaptiveRoute<SyllabusRoute>(
                  page: SyllabusRoute.page,
                  path: RoutePath.syllabus.path,
                ),
                AdaptiveRoute<TermCoursesRoute>(
                  page: TermCoursesRoute.page,
                  path: RoutePath.termCourses.path,
                ),
                AdaptiveRoute<TranscriptRoute>(
                  page: TranscriptRoute.page,
                  path: RoutePath.transcript.path,
                ),
              ],
            ),
          ],
        ),
      ];
}
