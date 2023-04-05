import 'package:flutter/material.dart';

Widget todoTiles({
  String? leading,
  String? title,
  void Function()? onDeleteTap,
  void Function()? onCardTap,
  BuildContext? context,
}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.purple)),
    child: Column(
      children: [
        ListTile(
          onTap: onCardTap,
          leading: CircleAvatar(child: Text(leading ?? "")),
          title: Text(title ?? ""),
          trailing: GestureDetector(
            onTap: onDeleteTap,
            child: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ),
      ],
    ),
  );
}
