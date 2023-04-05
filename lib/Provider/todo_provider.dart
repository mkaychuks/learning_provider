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

  // this function deletes a specific todo
  /// take the "index" parameter so as to have an identifier
  /// it also takes build context for managing the current state and navigation
  void deleteTodo(int index, BuildContext? context){
    /// search the todo list and find the one at the "index" 
    /// passed
    var deleteTodo = _todos.elementAt(index);
    /// if the search returns a result, then do the following stuff
    if(deleteTodo != null){
      _todos.remove(deleteTodo);
      Navigator.of(context!).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
      notifyListeners();
    }
  }
}
