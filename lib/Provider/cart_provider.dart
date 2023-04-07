import 'package:flutter/material.dart';
import 'package:learning_provider/Model/products.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _productsList = products;
  final List<Product> _cartItems = [];

  List get productsList => _productsList;
  List get cartItems => _cartItems;
  int get totalCartPrice => totalPriceInCart();
  

  /// this function calculates the total price
  /// of the items added to the cart
  int totalPriceInCart() {
    var sum = 0;
    ///loop through the items and get the price...
    for (var item in _cartItems) {
      sum += item.price;
    }
    // store in a variable
    return sum;
  }


  /// handles the adding of items to the cart
  void addItemToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeItemToCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void clearCart(){
    _cartItems.clear();
    notifyListeners();
  }

}
