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

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Provider.of<WeatherProvider>(context, listen: false)
            .getUserLocation(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/icons/clouds.png"),
            const Text(
              "LocuWeather",
              style: TextStyle(
                  letterSpacing: 1.5,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
