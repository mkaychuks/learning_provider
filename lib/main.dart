import 'package:flutter/material.dart';
import 'package:learning_provider/provider/change_state_notifier.dart';
import 'package:learning_provider/provider/users_provider.dart';
import 'package:learning_provider/screens/second_screen.dart';
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
      providers:[
        ChangeNotifierProvider(create: (context) => UserModel(),),
        ChangeNotifierProvider(create: (context) => CheckBoxChangeNotifier(),),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SecondScreen(),
      ),
    );
  }
}
