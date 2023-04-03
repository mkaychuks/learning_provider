

import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  int _currentCount = 10;

  int get currentCount => _currentCount;

  void increaseCount(){
    _currentCount++;
    notifyListeners();
  }

  void decreaseCount(){
    _currentCount--;
    notifyListeners();
  }
}