import 'package:flutter/material.dart';
import 'package:learning_provider/screens/home.dart';


void main(List<String> args) {
  return runApp(
    const MyApp()
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}