import 'package:flutter/material.dart';

class MyInputTextField extends StatelessWidget {
  MyInputTextField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
  });

  final TextEditingController controller;
  final Widget? prefixIcon;
  String? hintText;

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
