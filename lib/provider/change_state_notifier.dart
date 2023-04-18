import 'package:flutter/material.dart';

class CheckBoxChangeNotifier extends ChangeNotifier {
  bool? _isChecked = false;
  bool? get isChecked => _isChecked;

  void changeState(bool? newState, BuildContext context) {
    _isChecked = newState;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        showCloseIcon: true,
        backgroundColor: Colors.purple,
        content: Text("I just changed my state"),
      ),
    );
    notifyListeners();
  }
}
