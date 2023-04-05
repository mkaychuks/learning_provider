import 'package:flutter/material.dart';

Widget customInput({
  BuildContext? context,
  TextEditingController? controller,
}) {
  return TextFormField(
    maxLength: 300,
    controller: controller!,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
