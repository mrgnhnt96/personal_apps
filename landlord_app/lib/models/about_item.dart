import 'package:flutter/material.dart';

class AboutItem {
  final Icon icon;
  final String label;
  final Function handler;

  const AboutItem({
    @required this.icon,
    @required this.label,
    @required this.handler,
  });
}
