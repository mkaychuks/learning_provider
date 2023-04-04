import 'package:flutter/material.dart';
import 'package:learning_provider/widgets/custom_button.dart';
import 'package:learning_provider/widgets/input_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
            const SizedBox(height: 20),
            MyInputTextField(
              controller: emailTextController,
              prefixIcon: const Icon(Icons.mail_outline_outlined),
              hintText: "Email",
            ),
            const SizedBox(height: 10),
            MyInputTextField(
              controller: emailTextController,
              prefixIcon: const Icon(Icons.lock),
              hintText: "Password",
            ),
            const SizedBox(height: 10),
            MyCustomButton(
              status: true,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
