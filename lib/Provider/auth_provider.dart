import 'package:flutter/material.dart';
import 'package:learning_provider/second.dart';

class AuthenticationProvider extends ChangeNotifier {
  // to control the status of the button
  bool _status = true;

  // BuildContext? context;

  bool get status => _status;

  void loginUser(String email, String password, BuildContext? context) {
    _status = false;
    notifyListeners();
    Future.delayed(const Duration(seconds: 10), () {
      if (email == "admin@gmail.com") {
        _status = true;
        Navigator.of(context!).push(
          MaterialPageRoute(
            builder: (context) => const SecondScreen(),
          ),
        );
        notifyListeners();
      } else {
        _status = false;
        _status = true;
        notifyListeners();
      }
    });
  }
}
