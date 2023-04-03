

import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/counter_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(onPressed: (){
            value.decreaseCount();
          },child: Text("minus")),
          body: Center(
            child: Text(value.currentCount.toString(), style: TextStyle(fontSize: 30),),
          ),
        );
      }
    );
  }
}