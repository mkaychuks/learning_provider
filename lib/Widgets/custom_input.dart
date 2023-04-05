import 'package:flutter/material.dart';

Widget customInput(
    {String? initialValue,
    BuildContext? context,
    TextEditingController? controller}) {
  return TextFormField(
    maxLength: 300,
    controller: controller,
    initialValue: initialValue ?? "",
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
