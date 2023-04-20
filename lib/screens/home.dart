import 'package:flutter/material.dart';
import 'package:learning_provider/provider/weather_provider.dart';
import 'package:learning_provider/widgets/header.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Consumer<WeatherProvider>(builder: (context, weatherProvider, _) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerWidget(city: weatherProvider.city),
              ],
            ),
          );
        }),
      ),
    );
  }
}
