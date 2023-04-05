import 'package:flutter/material.dart';
import 'package:learning_provider/Models/todo_model.dart';
import 'package:learning_provider/Screens/home.dart';

class TodoProvider extends ChangeNotifier {
  
  final List<TodoModel> _todos = [];

  List<TodoModel> get todos => _todos;

  // this function handles the adding of todos
  void createTodo({String? title, BuildContext? context}) {
    var newTodo = TodoModel(title: title);
    _todos.add(newTodo);
    Navigator.of(context!).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
    notifyListeners();
  }
}
