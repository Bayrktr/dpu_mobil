part of '../../home_view.dart';

class _HomeViewBottomBarItem<T> extends StatefulWidget {
  final ValueKey<dynamic> key;
  final int index;
  final HomeViewBottomBarItemModel<T>? itemModel;
  final VoidCallback onTap;
  final bool isSelected;
  final Animation<double> sharedAnimation;

  const _HomeViewBottomBarItem({
    required this.index,
    this.itemModel,
    required this.onTap,
    required this.isSelected,
    required this.sharedAnimation,
    required this.key,
  });

  @override
  State<_HomeViewBottomBarItem<T>> createState() =>
      _HomeViewBottomBarItemState<T>();
}

class _HomeViewBottomBarItemState<T> extends State<_HomeViewBottomBarItem<T>> {
  @override
  Widget build(BuildContext context) {
    final activeColor = context.customTheme.selectedBottomBarItemColor;
    final isSelected = widget.isSelected;
    final animation = widget.sharedAnimation;

    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          final transformY = isSelected
              ? -context.sized.heightNormalValue * (animation.value ?? 1)
              : 0.0;
          final scale = isSelected ? 1.0 + 0.2 * (animation.value ?? 1) : 1.0;

          return Transform.translate(
            offset: Offset(0, transformY),
            child: Transform.scale(
              scale: scale,
              child: AnimatedContainer(
                key: ValueKey(widget.index),
                duration: const Duration(milliseconds: 500),
                padding: EdgeInsets.all(context.sized.dynamicWidth(0.015)),
                decoration: BoxDecoration(
                  color: isSelected ? activeColor : Colors.transparent,
                  borderRadius: context.borderRadius.low,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImage(
                      imageFrom: ImageFrom.ASSET,
                      imageType: ImageType.SVG,
                      color: Colors.white,
                      radius: context.radius.low,
                      assetPath: widget.itemModel?.iconPath,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
