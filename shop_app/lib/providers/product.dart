import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;
  String itemUrl(id, token, userId) {
    return 'https://shop-app-3a12d.firebaseio.com/userFavorites/$userId/$id.json?auth=$token';
  }

  Product({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.imageUrl,
    @required this.description,
    this.isFavorite = false,
  });

  void _setFavValue(bool newValue) {
    isFavorite = newValue;
  }

  Future<void> toggleFavoriteStatus(String token, String userId) async {
    final oldStatus = isFavorite;
    _setFavValue(!isFavorite);
    notifyListeners();
    try {
      final response = await http.put(
        (itemUrl(id, token, userId)),
        body: json.encode(
          isFavorite,
        ),
      );
      if (response.statusCode >= 400) {
        _setFavValue(oldStatus);
        notifyListeners();
      }
    } catch (err) {
      _setFavValue(oldStatus);
      notifyListeners();
    }
  }
}

class TempProduct {
  String id;
  String title;
  String description;
  double price;
  String imageUrl;
  bool isFavorite;

  TempProduct({
    this.id,
    this.title,
    this.price,
    this.imageUrl,
    this.description,
    this.isFavorite = false,
  });
}
