import 'package:flutter/material.dart';

class SkillsItem {
  final String title;
  final String description;
  final int amountOwned;
  final int increment;
  final int cost;

  const SkillsItem({
    @required this.title,
    @required this.description,
    @required this.amountOwned,
    @required this.cost,
    @required this.increment,
  });
}
