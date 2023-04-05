import 'package:flutter/material.dart';

Widget customButtion({
  BuildContext? context,
  String? title,
  void Function()? onPressed
}){
  return SizedBox(
    width: double.infinity,
    height: 54,
    child: ElevatedButton(
      onPressed: onPressed, 
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      child: Text(title ?? "", style: const TextStyle(fontSize: 18),)
      ),
  );
}