import 'package:flutter/material.dart';
import 'package:learning_provider/Model/products.dart';

class CartProvider extends ChangeNotifier {
  List<Product> _productsList = products;

  List<Product> _cartItems = [];

  List get productsList => _productsList;
  List get cartItems => _cartItems;

  void addItemToCart(Product product){
    _cartItems.add(product);
    notifyListeners();
  }
}