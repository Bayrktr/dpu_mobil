// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AcademicCalendarContentView]
class AcademicCalendarContentRoute
    extends PageRouteInfo<AcademicCalendarContentRouteArgs> {
  AcademicCalendarContentRoute({
    Key? key,
    AcademicCalendarModel? item,
    List<PageRouteInfo>? children,
  }) : super(
          AcademicCalendarContentRoute.name,
          args: AcademicCalendarContentRouteArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'AcademicCalendarContentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AcademicCalendarContentRouteArgs>(
          orElse: () => const AcademicCalendarContentRouteArgs());
      return AcademicCalendarContentView(
        key: args.key,
        item: args.item,
      );
    },
  );
}

class AcademicCalendarContentRouteArgs {
  const AcademicCalendarContentRouteArgs({
    this.key,
    this.item,
  });

  final Key? key;

  final AcademicCalendarModel? item;

  @override
  String toString() {
    return 'AcademicCalendarContentRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [AcademicCalendarView]
class AcademicCalendarRoute extends PageRouteInfo<void> {
  const AcademicCalendarRoute({List<PageRouteInfo>? children})
      : super(
          AcademicCalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'AcademicCalendarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AcademicCalendarView();
    },
  );
}

/// generated route for
/// [AllAcademicCalendarView]
class AllAcademicCalendarRoute extends PageRouteInfo<void> {
  const AllAcademicCalendarRoute({List<PageRouteInfo>? children})
      : super(
          AllAcademicCalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllAcademicCalendarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AllAcademicCalendarView();
    },
  );
}

/// generated route for
/// [AllAnnouncementsView]
class AllAnnouncementsRoute extends PageRouteInfo<void> {
  const AllAnnouncementsRoute({List<PageRouteInfo>? children})
      : super(
          AllAnnouncementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllAnnouncementsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AllAnnouncementsView();
    },
  );
}

/// generated route for
/// [AllEventsView]
class AllEventsRoute extends PageRouteInfo<void> {
  const AllEventsRoute({List<PageRouteInfo>? children})
      : super(
          AllEventsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllEventsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AllEventsView();
    },
  );
}

/// generated route for
/// [AllInformationView]
class AllInformationRoute extends PageRouteInfo<void> {
  const AllInformationRoute({List<PageRouteInfo>? children})
      : super(
          AllInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllInformationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AllInformationView();
    },
  );
}

/// generated route for
/// [AllMagazineView]
class AllMagazineRoute extends PageRouteInfo<void> {
  const AllMagazineRoute({List<PageRouteInfo>? children})
      : super(
          AllMagazineRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllMagazineRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AllMagazineView();
    },
  );
}

/// generated route for
/// [AllProfileView]
class AllProfileRoute extends PageRouteInfo<AllProfileRouteArgs> {
  AllProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AllProfileRoute.name,
          args: AllProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AllProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AllProfileRouteArgs>(
          orElse: () => const AllProfileRouteArgs());
      return AllProfileView(key: args.key);
    },
  );
}

class AllProfileRouteArgs {
  const AllProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AllProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AllSecondNewsView]
class AllSecondNewsRoute extends PageRouteInfo<void> {
  const AllSecondNewsRoute({List<PageRouteInfo>? children})
      : super(
          AllSecondNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllSecondNewsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AllSecondNewsView();
    },
  );
}

/// generated route for
/// [AnnouncementsContentView]
class AnnouncementsContentRoute extends PageRouteInfo<void> {
  const AnnouncementsContentRoute({List<PageRouteInfo>? children})
      : super(
          AnnouncementsContentRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnnouncementsContentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AnnouncementsContentView();
    },
  );
}

/// generated route for
/// [AnnouncementsView]
class AnnouncementsRoute extends PageRouteInfo<void> {
  const AnnouncementsRoute({List<PageRouteInfo>? children})
      : super(
          AnnouncementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnnouncementsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AnnouncementsView();
    },
  );
}

/// generated route for
/// [BusView]
class BusRoute extends PageRouteInfo<void> {
  const BusRoute({List<PageRouteInfo>? children})
      : super(
          BusRoute.name,
          initialChildren: children,
        );

  static const String name = 'BusRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BusView();
    },
  );
}

/// generated route for
/// [CurriculumCoursesView]
class CurriculumCoursesRoute extends PageRouteInfo<void> {
  const CurriculumCoursesRoute({List<PageRouteInfo>? children})
      : super(
          CurriculumCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurriculumCoursesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CurriculumCoursesView();
    },
  );
}

/// generated route for
/// [EventContentView]
class EventContentRoute extends PageRouteInfo<void> {
  const EventContentRoute({List<PageRouteInfo>? children})
      : super(
          EventContentRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventContentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EventContentView();
    },
  );
}

/// generated route for
/// [EventsView]
class EventsRoute extends PageRouteInfo<void> {
  const EventsRoute({List<PageRouteInfo>? children})
      : super(
          EventsRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EventsView();
    },
  );
}

/// generated route for
/// [ExamScheduleView]
class ExamScheduleRoute extends PageRouteInfo<void> {
  const ExamScheduleRoute({List<PageRouteInfo>? children})
      : super(
          ExamScheduleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExamScheduleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ExamScheduleView();
    },
  );
}

/// generated route for
/// [FoodMenuView]
class FoodMenuRoute extends PageRouteInfo<void> {
  const FoodMenuRoute({List<PageRouteInfo>? children})
      : super(
          FoodMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'FoodMenuRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FoodMenuView();
    },
  );
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return HomeView(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [InformationContentView]
class InformationContentRoute extends PageRouteInfo<void> {
  const InformationContentRoute({List<PageRouteInfo>? children})
      : super(
          InformationContentRoute.name,
          initialChildren: children,
        );

  static const String name = 'InformationContentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InformationContentView();
    },
  );
}

/// generated route for
/// [InformationView]
class InformationRoute extends PageRouteInfo<void> {
  const InformationRoute({List<PageRouteInfo>? children})
      : super(
          InformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InformationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InformationView();
    },
  );
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginView();
    },
  );
}

/// generated route for
/// [MagazineContentView]
class MagazineContentRoute extends PageRouteInfo<void> {
  const MagazineContentRoute({List<PageRouteInfo>? children})
      : super(
          MagazineContentRoute.name,
          initialChildren: children,
        );

  static const String name = 'MagazineContentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MagazineContentView();
    },
  );
}

/// generated route for
/// [MagazineView]
class MagazineRoute extends PageRouteInfo<void> {
  const MagazineRoute({List<PageRouteInfo>? children})
      : super(
          MagazineRoute.name,
          initialChildren: children,
        );

  static const String name = 'MagazineRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MagazineView();
    },
  );
}

/// generated route for
/// [MapView]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MapView();
    },
  );
}

/// generated route for
/// [NewsAllView]
class NewsAllRoute extends PageRouteInfo<NewsAllRouteArgs> {
  NewsAllRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          NewsAllRoute.name,
          args: NewsAllRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NewsAllRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<NewsAllRouteArgs>(orElse: () => const NewsAllRouteArgs());
      return NewsAllView(key: args.key);
    },
  );
}

class NewsAllRouteArgs {
  const NewsAllRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'NewsAllRouteArgs{key: $key}';
  }
}

/// generated route for
/// [NewsView]
class NewsRoute extends PageRouteInfo<NewsRouteArgs> {
  NewsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          NewsRoute.name,
          args: NewsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<NewsRouteArgs>(orElse: () => const NewsRouteArgs());
      return NewsView(key: args.key);
    },
  );
}

class NewsRouteArgs {
  const NewsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'NewsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ObsAttendanceReportView]
class ObsAttendanceReportRoute extends PageRouteInfo<void> {
  const ObsAttendanceReportRoute({List<PageRouteInfo>? children})
      : super(
          ObsAttendanceReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ObsAttendanceReportRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ObsAttendanceReportView();
    },
  );
}

/// generated route for
/// [ObsCourseAnnouncementView]
class ObsCourseAnnouncementRoute extends PageRouteInfo<void> {
  const ObsCourseAnnouncementRoute({List<PageRouteInfo>? children})
      : super(
          ObsCourseAnnouncementRoute.name,
          initialChildren: children,
        );

  static const String name = 'ObsCourseAnnouncementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ObsCourseAnnouncementView();
    },
  );
}

/// generated route for
/// [PortalView]
class PortalRoute extends PageRouteInfo<void> {
  const PortalRoute({List<PageRouteInfo>? children})
      : super(
          PortalRoute.name,
          initialChildren: children,
        );

  static const String name = 'PortalRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PortalView();
    },
  );
}

/// generated route for
/// [PrayerTimesView]
class PrayerTimesRoute extends PageRouteInfo<void> {
  const PrayerTimesRoute({List<PageRouteInfo>? children})
      : super(
          PrayerTimesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrayerTimesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PrayerTimesView();
    },
  );
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileView();
    },
  );
}

/// generated route for
/// [RadioView]
class RadioRoute extends PageRouteInfo<void> {
  const RadioRoute({List<PageRouteInfo>? children})
      : super(
          RadioRoute.name,
          initialChildren: children,
        );

  static const String name = 'RadioRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RadioView();
    },
  );
}

/// generated route for
/// [SearchView]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchView();
    },
  );
}

/// generated route for
/// [SecondNewsContentView]
class SecondNewsContentRoute extends PageRouteInfo<void> {
  const SecondNewsContentRoute({List<PageRouteInfo>? children})
      : super(
          SecondNewsContentRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondNewsContentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SecondNewsContentView();
    },
  );
}

/// generated route for
/// [SecondNewsView]
class SecondNewsRoute extends PageRouteInfo<void> {
  const SecondNewsRoute({List<PageRouteInfo>? children})
      : super(
          SecondNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondNewsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SecondNewsView();
    },
  );
}

/// generated route for
/// [SignInView]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignInView();
    },
  );
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SplashRouteArgs>(orElse: () => const SplashRouteArgs());
      return SplashView(key: args.key);
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [StudentInformationView]
class StudentInformationRoute extends PageRouteInfo<void> {
  const StudentInformationRoute({List<PageRouteInfo>? children})
      : super(
          StudentInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentInformationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StudentInformationView();
    },
  );
}

/// generated route for
/// [SyllabusView]
class SyllabusRoute extends PageRouteInfo<void> {
  const SyllabusRoute({List<PageRouteInfo>? children})
      : super(
          SyllabusRoute.name,
          initialChildren: children,
        );

  static const String name = 'SyllabusRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SyllabusView();
    },
  );
}

/// generated route for
/// [TelephoneDirectoryView]
class TelephoneDirectoryRoute extends PageRouteInfo<void> {
  const TelephoneDirectoryRoute({List<PageRouteInfo>? children})
      : super(
          TelephoneDirectoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TelephoneDirectoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TelephoneDirectoryView();
    },
  );
}

/// generated route for
/// [TermCoursesView]
class TermCoursesRoute extends PageRouteInfo<void> {
  const TermCoursesRoute({List<PageRouteInfo>? children})
      : super(
          TermCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermCoursesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TermCoursesView();
    },
  );
}

/// generated route for
/// [TranscriptView]
class TranscriptRoute extends PageRouteInfo<void> {
  const TranscriptRoute({List<PageRouteInfo>? children})
      : super(
          TranscriptRoute.name,
          initialChildren: children,
        );

  static const String name = 'TranscriptRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TranscriptView();
    },
  );
}
