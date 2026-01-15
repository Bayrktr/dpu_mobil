part of 'home_view.dart';

mixin _HomeViewMixin on StatelessWidget {
  final List<HomeViewBottomBarItemModel<dynamic>> items = [
    HomeViewBottomBarItemModel<dynamic>(
      route: const ProfileRoute(),
      name: 'Profile',
      iconPath: IconsEnum.person.path,
    ),
    HomeViewBottomBarItemModel<dynamic>(
      route: const MapRoute(),
      name: 'map',
      iconPath: IconsEnum.map.path,
    ),
    HomeViewBottomBarItemModel<dynamic>(
      route: NewsRoute(),
      name: 'News',
      iconPath: IconsEnum.home.path,
    ),
    HomeViewBottomBarItemModel<dynamic>(
      route: const BusRoute(),
      name: 'Bus',
      iconPath: IconsEnum.bus.path,
    ),
    HomeViewBottomBarItemModel<dynamic>(
      route: const SearchRoute(),
      name: 'Search',
      iconPath: IconsEnum.search.path,
    ),
  ];

  late final routes = items.map((e) => e.route).toList();
}
