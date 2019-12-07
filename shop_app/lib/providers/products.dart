import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/http_exception.dart';

import './product.dart';

class Products with ChangeNotifier {
  final String authToken;
  final String userId;
  Products(this.authToken, this.userId, this._items);

  String get urls {
    return 'https://shop-app-3a12d.firebaseio.com/products.json?auth=$authToken';
  }

  String itemUrl(String id) {
    if (id == '') {
      return 'https://shop-app-3a12d.firebaseio.com/products.json?auth=$authToken&orderBy="creatorId"&equalTo="$userId"';
    } else {
      return 'https://shop-app-3a12d.firebaseio.com/products/$id.json?auth=$authToken';
    }
  }

  String get favoritesUrl {
    return 'https://shop-app-3a12d.firebaseio.com/userFavorites/$userId.json?auth=$authToken';
  }

  List<Product> _items = [
    // Product(
    //   id: 'p1',
    //   title: 'Red Shirt',
    //   description: 'A red shirt - it is pretty red!',
    //   price: 29.99,
    //   imageUrl:
    //       'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    // ),
    // Product(
    //   id: 'p2',
    //   title: 'Trousers',
    //   description: 'A nice pair of trousers.',
    //   price: 59.99,
    //   imageUrl:
    //       'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    // ),
    // Product(
    //   id: 'p3',
    //   title: 'Yellow Scarf',
    //   description: 'Warm and cozy - exactly what you need for the winter.',
    //   price: 19.99,
    //   imageUrl:
    //       'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    // ),
    // Product(
    //   id: 'p4',
    //   title: 'A Pan',
    //   description: 'Prepare any meal you want.',
    //   price: 49.99,
    //   imageUrl:
    //       'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    // ),
  ];

  List<Product> get items {
    //! MANAGE YOUR LOGIC IN WIDGETS NOT GLOBALLY!
    //// if (_showFavoritesOnly) {
    //// return _items.where((prod) => prod.isFavorite).toList();
    //// }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  //// void showFavoritesOnly() {
  //// _showFavoritesOnly = true;
  //// notifyListeners();
  ////}
////
  //// void showAll() {
  //// _showFavoritesOnly = false;
  //// notifyListeners();
  ////}
////

  Future<void> fetchAndSetProducts([bool filterByUser = false]) async {
    try {
      final response = await http.get(filterByUser ? itemUrl('') : urls);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final favoriteResponse = await http.get(favoritesUrl);
      final favoriteData = json.decode(favoriteResponse.body);
      final List<Product> loadedProducts = [];
      if (extractedData == null) {
        return;
      }
      extractedData.forEach((prodId, prodData) {
        loadedProducts.add(Product(
          isFavorite:
              favoriteData == null ? false : favoriteData[prodId] ?? false,
          description: prodData['description'],
          imageUrl: prodData['imageUrl'],
          title: prodData['title'],
          price: prodData['price'],
          id: prodId,
        ));
      });
      _items = loadedProducts;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> addProduct(Product product) async {
    try {
      final response = await http.post(
        urls,
        body: json.encode(
          {
            'title': product.title,
            'description': product.description,
            'imageUrl': product.imageUrl,
            'price': product.price,
            'creatorId': userId,
          },
        ),
      );
      final newProduct = Product(
        title: product.title,
        description: product.description,
        id: json.decode(response.body)['name'],
        imageUrl: product.imageUrl,
        price: product.price,
        isFavorite: product.isFavorite,
      );
      _items.add(newProduct);
      // _items.insert(0, newProduct); //* TO ADD AT THE END OF THE OBJECT
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  void updateProduct(String id, Product newProduct) async {
    final prodIndex = _items.indexWhere((prod) => prod.id == id);
    if (prodIndex >= 0) {
      await http.patch(itemUrl(id),
          body: json.encode({
            'title': newProduct.title,
            'description': newProduct.description,
            'imageUrl': newProduct.imageUrl,
            'price': newProduct.price,
          }));
      _items[prodIndex] = newProduct;
      notifyListeners();
    } else {
      print('...');
    }
  }

  Future<void> deleteProduct(String id) async {
    final existingProductIndex = _items.indexWhere((prod) => prod.id == id);
    var existingProduct = _items[existingProductIndex];
    final response = await http.delete(itemUrl(id));

    _items.removeAt(existingProductIndex);
    notifyListeners();
    if (response.statusCode >= 400) {
      _items.insert(existingProductIndex, existingProduct);
      notifyListeners();
      throw HttpException('Could not delete product');
    }
    existingProduct = null;
  }
}

//! THIS IS A OPTIMISTIC UPDATING SYNTAX
//   void deleteProduct(String id) {
//     final existingProductIndex = _items.indexWhere((prod) => prod.id == id);
//     var existingProduct = _items[existingProductIndex];
//     http.delete(itemUrl(id)).then((response) {
//       if (response.statusCode >= 400) {
//         throw HttpException('Could not delete product');
//       }
//       existingProduct = null;
//     }).catchError((_) {
//       _items.insert(existingProductIndex, existingProduct);
//       notifyListeners();
//     });
//     _items.removeAt(existingProductIndex);
//     notifyListeners();
//   }
// }
