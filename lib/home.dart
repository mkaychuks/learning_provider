import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/counter_provider.dart';
import 'package:learning_provider/second.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final numberOfTimes = 10;

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              counterProvider.increaseCount();
            },
            child: const Icon(Icons.add),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The button has been pressed ${counterProvider.currentCount}",
                  style: const TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SecondScreen(),
                        ),
                      );
                    },
                    child: const Text("Navigate to next page"))
              ],
            ),
          ),
        );
      }
    );
  }
}
