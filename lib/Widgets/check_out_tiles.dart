import 'package:flutter/material.dart';

Widget checkOutTiles({
  BuildContext? context,
  required String title,
  required String subtitle,
  required void Function()? onTap
}){
  return ListTile(
    onTap: onTap,
    leading: const CircleAvatar(),
    subtitle: const Text("Tap to remove from cart", style: TextStyle(color: Colors.red, fontSize: 16),),
    title: Text(title),
    trailing: Text("\$$subtitle", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
  );
}