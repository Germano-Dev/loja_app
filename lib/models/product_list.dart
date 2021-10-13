import 'package:flutter/material.dart';
import 'package:loja_app/data/dummy_data.dart';
import 'package:loja_app/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;

  List<Product> get items => [..._items]; //clone dos _items

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners(); // atualiza os observers necessários
  }
}
