import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/todo_provider.dart';
import 'package:learning_provider/Widgets/custom_button.dart';
import 'package:learning_provider/Widgets/custom_input.dart';
import 'package:provider/provider.dart';

class CreateTodoScreen extends StatefulWidget {
  const CreateTodoScreen({super.key});

  @override
  State<CreateTodoScreen> createState() => _CreateTodoScreenState();
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {
  final TextEditingController _todoController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _todoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0, title: const Text("Create Todo"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            customInput(
              context: context,
              controller: _todoController,
            ),
            const SizedBox(
              height: 20,
            ),
            Consumer<TodoProvider>(builder: (context, todoProvider, child) {
              return customButtion(
                onPressed: () {
                  todoProvider.createTodo(
                      title: _todoController.text.trim(), context: context);
                },
                title: "Submit",
                context: context,
              );
            })
          ],
        ),
      ),
    );
  }
}
