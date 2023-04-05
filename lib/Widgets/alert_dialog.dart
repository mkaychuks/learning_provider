import 'package:flutter/material.dart';

Widget customAlertDialog({
  BuildContext? context,
  void Function()? onYesPressed,
}) {
  return AlertDialog(
    elevation: 0,
    alignment: Alignment.center,
    contentPadding: const EdgeInsets.all(20),
    iconPadding: const EdgeInsets.all(20),
    title: const Text("Are you sure you wish to delete"),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    actions: [
      TextButton(
        onPressed: onYesPressed,
        child: const Text(
          "Yes",
          style: TextStyle(fontSize: 18, color: Colors.red),
        ),
      ),
      TextButton(
        onPressed: (){
          Navigator.pop(context!);
        },
        child: const Text(
          "No",
          style: TextStyle(fontSize: 18, color: Colors.green),
        ),
      ),
    ],
  );
}
