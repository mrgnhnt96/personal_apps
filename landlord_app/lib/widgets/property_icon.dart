import 'package:flutter/material.dart';

class PropertyIcon extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final double size;

  PropertyIcon({
    this.backgroundColor,
    this.icon,
    this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: LayoutBuilder(
        builder: (ctx, constraints) {
          return Icon(
            icon,
            size: constraints.biggest.width,
          );
        },
      ),
    );
  }
}
