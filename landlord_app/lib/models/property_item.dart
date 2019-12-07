import 'package:flutter/material.dart';

class PropertyItem {
  final int id;
  final String imageUrl;
  final String title;
  final int value;
  final double percentOwned;
  final int rent;
  final int cost;
  final int profit;
  final Color color;
  final bool growth;
  final IconData icon;
  final String address;
  final int coinValue;

  const PropertyItem({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    @required this.value,
    @required this.percentOwned,
    @required this.rent,
    @required this.cost,
    @required this.profit,
    @required this.color,
    @required this.icon,
    this.coinValue,
    this.address,
    this.growth,
  });
}
