import 'package:flutter/material.dart';

class ColoredTabBar extends Container implements PreferredSizeWidget {
  final TabBar tabBar;

  ColoredTabBar({this.tabBar});

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
    color: Theme.of(context).accentColor,
    child: tabBar,
  );
}