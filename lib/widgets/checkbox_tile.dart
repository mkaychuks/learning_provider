import 'package:flutter/material.dart';

Widget customCheckBoxTile({
  BuildContext? context,
  void Function(bool?)? onChanged,
  bool state = true,
}) {
  return ListTile(
    title: Text(
      "Spidey and his amazing friends",
      style: TextStyle(
        decoration: state ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    ),
    trailing: Checkbox(
      value: state,
      onChanged: onChanged,
    ),
  );
}
