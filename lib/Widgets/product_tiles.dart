import 'package:flutter/material.dart';

Widget productTiles({
  BuildContext? context,
  required String title,
  required String subtitle,
  required void Function()? onTap
}){
  return ListTile(
    leading: const CircleAvatar(),
    title: Text(title),
    subtitle: Text('\$$subtitle'),
    trailing: GestureDetector(onTap: onTap,child: const Icon(Icons.add_shopping_cart, size: 30,)),
  );
}