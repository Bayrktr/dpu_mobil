part of '../../home_view.dart';

class _HomeViewBottomBar extends StatefulWidget {
  const _HomeViewBottomBar({
    required this.items,
    required this.selectedItemIndex,
  });

  final List<HomeViewBottomBarItemModel<dynamic>> items;
  final int selectedItemIndex;

  @override
  State<_HomeViewBottomBar> createState() => _HomeViewBottomBarState();
}

class _HomeViewBottomBarState extends State<_HomeViewBottomBar>
    with SingleTickerProviderStateMixin {
  late int oldIndex;
  late AnimationController _controller;
  late Animation<Offset> _animation;

  Duration get _animationDuration => const Duration(milliseconds: 400);

  @override
  void initState() {
    super.initState();
    oldIndex = widget.selectedItemIndex;
    _controller = AnimationController(
      duration: _animationDuration,
      vsync: this,
    );
    _setupAnimation();
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant _HomeViewBottomBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedItemIndex != oldWidget.selectedItemIndex) {
      oldIndex = oldWidget.selectedItemIndex;
      _setupAnimation();
      _controller.forward(from: 0);
    }
  }

  void _setupAnimation() {
    final direction =
        (widget.selectedItemIndex - oldIndex).clamp(-1, 1).toDouble();

    _animation = Tween<Offset>(
      begin: Offset(-direction, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedItemOffset =
        (context.sized.width / widget.items.length) * widget.selectedItemIndex +
            (context.sized.width / widget.items.length) / 2;

    return Padding(
      padding: context.padding.normal,
      child: SizedBox(
        height: context.sized.dynamicHeight(0.09),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomPaint(
              size: Size(double.infinity, context.sized.dynamicHeight(0.08)),
              painter: BottomBarPainter(
                itemCount: widget.items.length,
                selectedIndex: widget.selectedItemIndex,
                color: context.customTheme.homeBottomBarColor,
                notchRadius: context.radius.low,
              ),
            ),
            Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  widget.items.length,
                  (index) {
                    final item = widget.items[index];
                    final isSelected = index == widget.selectedItemIndex;
                    final isOldSelected = oldIndex == widget.selectedItemIndex;
                    if (isSelected || isOldSelected) {
                      return AnimatedSwitcher(
                        duration: _animationDuration,
                        transitionBuilder: (child, animation) {
                          return SlideTransition(
                            position: _animation,
                            child: child,
                          );
                        },
                        child: _HomeViewBottomBarItem<dynamic>(
                          key: ValueKey(index),
                          index: index,
                          itemModel: item,
                          isSelected: isSelected,
                          sharedAnimation: _controller,
                          onTap: () {
                            context.tabsRouter.setActiveIndex(index);
                          },
                        ),
                      );
                    } else {
                      return _HomeViewBottomBarItem<dynamic>(
                        key: ValueKey(index),
                        index: index,
                        itemModel: item,
                        isSelected: isSelected,
                        sharedAnimation: _controller,
                        onTap: () {
                          context.tabsRouter.setActiveIndex(index);
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class BottomBarPainter extends CustomPainter {
  final int itemCount;
  final int selectedIndex;
  final Color color;
  final double notchRadius;

  BottomBarPainter({
    required this.itemCount,
    required this.selectedIndex,
    required this.color,
    required this.notchRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final width = size.width;
    final height = size.height;
    final itemWidth = width / itemCount;
    final notchCenterX = itemWidth * selectedIndex + itemWidth / 2;
    final notchWidth = notchRadius * 2;
    const cornerRadius = 6.0;
    final notchHeight = height * 0.6 + cornerRadius * 2;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(notchCenterX - notchWidth / 2 - cornerRadius, 0)
      ..quadraticBezierTo(
        notchCenterX - notchWidth / 2,
        0,
        notchCenterX - notchWidth / 2,
        cornerRadius,
      )
      ..lineTo(notchCenterX - notchWidth / 2, notchHeight - cornerRadius)
      ..quadraticBezierTo(
        notchCenterX - notchWidth / 2,
        notchHeight,
        notchCenterX - notchWidth / 2 + cornerRadius,
        notchHeight,
      )
      ..lineTo(notchCenterX + notchWidth / 2 - cornerRadius, notchHeight)
      ..quadraticBezierTo(
        notchCenterX + notchWidth / 2,
        notchHeight,
        notchCenterX + notchWidth / 2,
        notchHeight - cornerRadius,
      )
      ..lineTo(notchCenterX + notchWidth / 2, cornerRadius)
      ..quadraticBezierTo(
        notchCenterX + notchWidth / 2,
        0,
        notchCenterX + notchWidth / 2 + cornerRadius,
        0,
      )
      ..lineTo(width, 0)
      ..lineTo(width, height)
      ..lineTo(0, height)
      ..close();

    final rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, width, height),
      topLeft: const Radius.circular(cornerRadius),
      topRight: const Radius.circular(cornerRadius),
      bottomLeft: const Radius.circular(cornerRadius),
      bottomRight: const Radius.circular(cornerRadius),
    );

    canvas
      ..clipRRect(rrect)
      ..drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant BottomBarPainter oldDelegate) {
    return oldDelegate.selectedIndex != selectedIndex;
  }
}
