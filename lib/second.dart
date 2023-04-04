import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/counter_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
        builder: (context, counterProvider, child) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
              "This is the second page \n current count is ${counterProvider.currentCount}",
              style: const TextStyle(fontSize: 24)),
        ),
      );
    });
  }
}
