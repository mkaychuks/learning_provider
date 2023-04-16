import 'package:flutter/material.dart';
import 'package:learning_provider/models/user_model.dart';
import 'package:learning_provider/services/user_service.dart';

class UserModel extends ChangeNotifier {
  List<User>? _users;

  List<User>? get users => _users;

  Future addUsersToList() async {
    _users = await UserService().getallUsers();
    notifyListeners();
  }

  void removeUserFromList(User user){
    _users!.remove(user);
    notifyListeners();
  }

}
