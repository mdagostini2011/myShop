import 'package:flutter/material.dart';
import 'package:myshop/data/dummy_data.dart';
import 'package:myshop/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;

  List<Product> get items => [...items];
  List<Product> get favoriteItems => [...favoriteItems];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}

//bool _showFavoriteOnly = false;
//{
//   if(_showFavoriteOnly) {
//     return _items.where((prod) => prod.isFavorite).toList();
//   }
//   return [..._items];
// }
//
// void showFavoriteOnly() {
//   _showFavoriteOnly = true;
//   notifyListeners();
// }
//
// void showAll() {
//   _showFavoriteOnly = false;
//   notifyListeners();
// }
