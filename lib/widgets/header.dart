import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget headerWidget({
  required String city,
}) {
  final date = DateTime.now();
  final formattedDate = DateFormat.yMMMd().format(date);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            city,
            style:
                const TextStyle(fontSize: 30, height: 1, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 4,
          ),
          const Icon(Icons.gps_fixed),
        ],
      ),
      const SizedBox(
        height: 6,
      ),
      Text(
        formattedDate,
        style: const TextStyle(
          color: Colors.grey,
          height: 0.5,
        ),
      )
    ],
  );
}
