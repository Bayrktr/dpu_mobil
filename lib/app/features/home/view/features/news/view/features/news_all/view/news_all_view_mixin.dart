part of 'news_all_view.dart';


mixin _NewsAllViewMixin on StatelessWidget {
  final List<HomeViewPageSelectionContainerModel<dynamic>> _items = [
    HomeViewPageSelectionContainerModel(
      title: AppConstant.dpuShort + LocaleKeys.news_page_events.lang.tr,
      iconData: Icons.event,
      routeInfo: EventsRoute(),
    ),
    HomeViewPageSelectionContainerModel(
      title: AppConstant.dpuShort + LocaleKeys.news_page_news.lang.tr,
      iconData: Icons.newspaper,
      routeInfo: SecondNewsRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title: AppConstant.dpuShort + LocaleKeys.news_page_portal.lang.tr,
      iconData: Icons.event,
      routeInfo: PortalRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title: AppConstant.dpuShort + LocaleKeys.news_page_announcements.lang.tr,
      iconData: Icons.announcement,
      routeInfo: AnnouncementsRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.news_page_magazine.lang.tr,
      iconData: Icons.newspaper,
      routeInfo: MagazineRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title: AppConstant.dpuShort + LocaleKeys.news_page_radio.lang.tr,
      iconData: Icons.radio,
      routeInfo: RadioRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.news_page_telephoneDirectory.lang.tr,
      iconData: Icons.book,
      routeInfo: TelephoneDirectoryRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title: AppConstant.dpuShort + LocaleKeys.news_page_information.lang.tr,
      iconData: Icons.newspaper,
      routeInfo: InformationRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title:  LocaleKeys.news_page_prayerTimes.lang.tr,
      iconData: Icons.newspaper,
      routeInfo: PrayerTimesRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title:  LocaleKeys.news_page_academicCalendar.lang.tr,
      iconData: Icons.calendar_month,
      routeInfo: AcademicCalendarRoute(),

    ),
    HomeViewPageSelectionContainerModel(
      title: LocaleKeys.news_page_foodMenu.lang.tr,
      iconData: Icons.food_bank_outlined,
      routeInfo: FoodMenuRoute(),

    ),
  ];
}