import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key key,
    @required this.child,
    @required this.value,
    this.rightPosition,
    this.topPosition,
    this.badgeSize,
    this.badgeColor,
  }) : super(key: key);

  final Widget child;
  final Widget value;
  final Color badgeColor;
  final double badgeSize;
  final double rightPosition;
  final double topPosition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: rightPosition == null ? 0 : rightPosition,
          top: topPosition == null ? 0 : topPosition,
          child: CircleAvatar(
            minRadius: badgeSize == null ? 12.0 : badgeSize,
            child: value,
            backgroundColor:
                badgeColor != null ? badgeColor : Theme.of(context).accentColor,
          ),
        ),
      ],
    );
  }
}
