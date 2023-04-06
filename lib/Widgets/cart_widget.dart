import 'package:flutter/material.dart';

Widget cartWidget({
  BuildContext? context
}){
  return Stack(
    children: [
      const Icon(Icons.shopping_cart),
      Positioned(
        top: 0,
        right: 0,
        child: Container(
          constraints: const BoxConstraints(
            minHeight: 14,
            minWidth: 14
          ),
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.red
          ),
          child: const Text('', style: TextStyle(fontSize: 10, color: Colors.white),),
        ),
      )
    ],
  );
}