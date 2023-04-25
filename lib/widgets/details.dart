import 'package:flutter/material.dart';



Widget details({
  required String desc,
  required String value
}){
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(desc, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
        Text(value, style: const TextStyle(fontSize: 14),)
      ],
    ),
  );
}