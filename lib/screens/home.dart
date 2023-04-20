import 'package:flutter/material.dart';
import 'package:learning_provider/provider/weather_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String city = '';

  @override
  void initState() {
    super.initState();

    Provider.of<WeatherProvider>(context, listen: false).getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<WeatherProvider>(builder: (context, weatherProvider, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('This is the latitude of my phone ${weatherProvider.latitude}'),
          const SizedBox(
            height: 40,
          ),
          Text(
              'This is the longitude of my phone ${weatherProvider.longitude}'),
          const SizedBox(
            height: 100,
          ),
          Text(weatherProvider.city)
        ]);
      }),
    );
  }
}
