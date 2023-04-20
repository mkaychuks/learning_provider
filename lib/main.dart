import 'package:flutter/material.dart';
import 'package:learning_provider/provider/weather_provider.dart';
import 'package:learning_provider/screens/splash_screen.dart';
import 'package:provider/provider.dart';
// import 'package:learning_provider/screens/home.dart';

void main(List<String> args) {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WeatherProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.purple,
            appBarTheme:
                const AppBarTheme(elevation: 0, backgroundColor: Colors.purple),
            ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
