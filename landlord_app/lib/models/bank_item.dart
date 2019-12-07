import 'package:flutter/foundation.dart';

class BankItem {
  final String title;
  final int coinAmount;
  final double price;
  final String imageUrl;

  const BankItem({
    @required this.title,
    @required this.coinAmount,
    @required this.price,
    this.imageUrl,
  });
}