
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _currentCount = 0;

  int get currentCount => _currentCount;

  /// a function that increases the counter by 1
  void increaseCount(){
    _currentCount += 1;
    notifyListeners();
  }
}