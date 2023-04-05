import 'package:flutter/material.dart';
import 'package:learning_provider/Models/todo_model.dart';
import 'package:learning_provider/Provider/todo_provider.dart';
import 'package:learning_provider/Widgets/custom_button.dart';
import 'package:learning_provider/Widgets/custom_input.dart';
import 'package:provider/provider.dart';

class UpdateTodoScreen extends StatelessWidget {
  UpdateTodoScreen({super.key, required this.todo, required this.index});

  TodoModel todo;
  int index;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _updateController =
        TextEditingController(text: todo.title);
    return Scaffold(
      appBar: AppBar(
          elevation: 0, title: const Text("Update Todo"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            customInput(context: context, controller: _updateController),
            const SizedBox(
              height: 20,
            ),
            Consumer<TodoProvider>(builder: (context, todoProvider, child) {
              return customButtion(
                  onPressed: () {
                    todoProvider.updateTodo(
                      index,
                      context,
                      _updateController.text.trim(),
                    );
                  },
                  title: "Submit",
                  context: context);
            })
          ],
        ),
      ),
    );
  }
}
