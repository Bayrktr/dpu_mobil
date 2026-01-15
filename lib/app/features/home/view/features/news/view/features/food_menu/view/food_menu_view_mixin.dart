part of 'food_menu_view.dart';

mixin _FoodMenuViewMixin on StatelessWidget {
  String get appBarTitle => LocaleKeys.news_page_foodMenu.lang.tr;

  double getTotalKcal(List<FoodModel?> foods) {
    return foods.map((e) => e?.kcal ?? 0).fold(
          0,
          (prev, val) => prev + val,
        );
  }
}
