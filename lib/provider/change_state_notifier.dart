import 'package:flutter/material.dart';

class CheckBoxChangeNotifier extends ChangeNotifier {

  bool? _isChecked = false;
  bool? get isChecked => _isChecked;


  void changeState(bool? newState){
    _isChecked = newState;
    notifyListeners();
  }
}