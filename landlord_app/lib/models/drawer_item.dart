import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData icon;
  final String routeName;
  final int index;

  const DrawerItem({
    @required this.title,
    @required this.icon,
    @required this.routeName,
    @required this.index,
  });
}
