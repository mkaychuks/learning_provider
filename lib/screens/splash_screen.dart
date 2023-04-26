import 'package:flutter/material.dart';
import 'package:learning_provider/provider/weather_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        Provider.of<WeatherProvider>(context, listen: false)
            .getUserLocation(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset("assets/icons/clouds.png"),
    ));
  }
}
