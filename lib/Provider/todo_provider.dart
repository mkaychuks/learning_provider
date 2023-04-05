import 'package:flutter/material.dart';
import 'package:learning_provider/Models/todo_model.dart';

class TodoProvider extends ChangeNotifier {
  List<TodoModel> _todos = [];

  List<TodoModel> get todos => _todos;
}
