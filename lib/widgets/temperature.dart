import 'package:flutter/material.dart';



Widget temperatureWidget({
  required String temperature,
  required String imageID,
  required String description,
  String? sunset
}){
  return Column(
    children: [
      Image.asset("assets/weather/$imageID.png"),
      Text("$temperature°C", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
      Text(description, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
    ],
  );
}