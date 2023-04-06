import 'package:flutter/material.dart';
import 'package:learning_provider/Model/products.dart';

class CartProvider extends ChangeNotifier {
  List<Product> _productsList = products;

  List get productsList => _productsList;
}