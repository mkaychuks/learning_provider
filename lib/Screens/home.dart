import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0, title: Text("TodoList Provider"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: todos.isEmpty
          ? Center(
              child: Text("There are no current todo", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
            )
          : Center(
              child: Text("List of todos"),
            ),
    );
  }
}
