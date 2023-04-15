import 'package:flutter/material.dart';

Widget userCard({
  BuildContext? context,
  required String username,
  required String name,
  required String email,
}) {
  return ListTile(
    title: Text(name),
    leading: CircleAvatar(
      child: Text(username[0]),
    ),
    subtitle: Text(email),
  );
}
