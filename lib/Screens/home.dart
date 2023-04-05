import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/todo_provider.dart';
import 'package:learning_provider/Screens/create_todo.dart';
import 'package:learning_provider/Screens/update_todo.dart';
import 'package:learning_provider/Widgets/alert_dialog.dart';
import 'package:learning_provider/Widgets/todo_tile.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(
      builder: (context, todoProvider, child) {
        var todos = todoProvider.todos; // getting the total number of todos in the DB
        return Scaffold(
          appBar: AppBar(
              elevation: 0,
              title: const Text("TodoList Provider"),
              centerTitle: true),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateTodoScreen(),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          body: todos.isEmpty
              ? const Center(
                  child: Text(
                    "There are no current todo",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      todoTiles(
                        context: context,
                        leading: "A",
                        title: "First todo",
                        onCardTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const UpdateTodoScreen(),
                          ),
                        ),
                        onDeleteTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return customAlertDialog(
                                  context: context,
                                  onYesPressed: () {});
                            },
                          );
                        },
                      ),
                      const Divider(),
                      todoTiles(
                        context: context,
                        leading: "B",
                        title: "Second Todo",
                        onDeleteTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return customAlertDialog(
                                context: context,
                                onYesPressed: () {},
                              );
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
        );
      }
    );
  }
}