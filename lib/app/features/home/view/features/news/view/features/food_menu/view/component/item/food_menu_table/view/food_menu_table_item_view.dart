part of '../../../../food_menu_view.dart';

class _FoodMenuTableItem extends StatelessWidget {
  const _FoodMenuTableItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FoodMenuTableItemController(),
      child: BaseCubitWidget(
        bloc: FoodMenuTableItemController(),
        initial: (
          BaseInitialModel<FoodMenuTableItemInitialModel, Object, Object> state,
        ) {
          return Container();
        },
        blocType: BlocType.both,
        listener: (
          context,
          BaseState<FoodMenuTableItemInitialModel, Object, Object> state,
        ) {

        },
      ),
    );
  }
}
