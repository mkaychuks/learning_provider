import 'package:flutter/material.dart';

Widget customTextField({
  required TextEditingController controller,
  required String hintext

}){
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      focusedBorder:OutlineInputBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      hintText: hintext
    ),
  );
}