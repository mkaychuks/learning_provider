import 'package:flutter/material.dart';

Widget customButton({
  bool status = false,
  void Function()? onTap,
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: status ? Colors.blue : Colors.grey,
      ),
      child: Text(
        status ? 'Login' : "Please wait....",
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
  );
}
