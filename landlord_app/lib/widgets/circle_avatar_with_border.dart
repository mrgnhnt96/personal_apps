import 'package:flutter/material.dart';

class CircleAvatarWithBorder extends StatelessWidget {
  CircleAvatarWithBorder(
      {this.borderColor,
      this.borderSize,
      this.circleSize,
      this.internalColor,
      this.shadowSize,
      this.child});

  final Widget child;
  final double circleSize;
  final Color borderColor;
  final Color internalColor;
  final double borderSize;
  final double shadowSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleSize == null ? 60 : circleSize,
      height: circleSize == null ? 60 : circleSize,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: internalColor == null
              ? Theme.of(context).canvasColor
              : internalColor,
          border: Border.all(
            width: borderSize == null ? 2.0 : borderSize,
            color: borderColor == null ? Colors.grey : borderColor,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: shadowSize == null ? 5.0 : shadowSize,
            ),
          ]),
      child: Center(child: child == null ? null : child),
    );
  }
}
