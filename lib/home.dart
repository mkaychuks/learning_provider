import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/counter_provider.dart';
import 'package:learning_provider/second.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, value, child) {
        var count = value.currentCount;
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              value.increaseCount();
            },
            child: Text("add"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("The floating action button has been pressed"),
                Text(count.toString(), style: TextStyle(fontSize: 30)),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(),));
                }, child: Text("Next screen"))
              ],
            ),
          ),
        );
      }
    );
  }
}
