import 'package:flutter/material.dart';

class MyTooltip extends StatelessWidget {
  final Widget child;
  final String message;
  const MyTooltip({
    Key? key,
    required this.child,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<State<Tooltip>>();
    return Tooltip(
      key: key,
      verticalOffset: 15,
      preferBelow: false,
      message: message,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _onTap(key),
        child: child,
      ),
    );
  }

  void _onTap(GlobalKey key) {
    final dynamic tooltip = key.currentState;
    tooltip?.ensureTooltipVisible();
  }
}
