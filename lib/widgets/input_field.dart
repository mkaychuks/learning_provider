import 'package:flutter/material.dart';

Widget inputButton({
  TextEditingController? controller,
  Widget? prefixIcon,
  String? hintText,
  BuildContext? context,
}) {
  return TextFormField(
    controller: controller,
    maxLength: 20,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      prefixIcon: prefixIcon,
    ),
    style: const TextStyle(fontSize: 18),
    validator: (value) {
      if (value!.isEmpty) {
        return "This field is required";
      }
      return null;
    },
  );
}
