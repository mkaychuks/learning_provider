import 'package:flutter/material.dart';

Widget customButton({
  BuildContext? context,
  required void Function()? onTap,
  bool cartStatus = false,
  required String title
}) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: GestureDetector(
      onTap: cartStatus? onTap : null,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 60,
        decoration: BoxDecoration(
            color: cartStatus ? Colors.purple : Colors.grey, borderRadius: BorderRadius.circular(12)),
        child:  Text(
          title,
          style: const TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
