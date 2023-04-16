import 'package:flutter/material.dart';

Widget userCard(
    {BuildContext? context,
    required String username,
    required String name,
    required String email,
    required void Function()? deleteTodo}) {
  return ListTile(
    title: Text(name),
    leading: CircleAvatar(
      child: Text(username[0]),
    ),
    subtitle: Text(email),
    trailing: GestureDetector(
      onTap: deleteTodo,
      child: const Icon(
        Icons.clear,
        color: Colors.red,
      ),
    ),
  );
}
