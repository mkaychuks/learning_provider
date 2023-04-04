import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/auth_provider.dart';
import 'package:learning_provider/widgets/custom_button.dart';
import 'package:learning_provider/widgets/input_field.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

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
        child: Form(
          key: globalFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              inputButton(
                  controller: emailTextController,
                  prefixIcon: const Icon(Icons.mail_outline_outlined),
                  hintText: "Email",
                  context: context),
              const SizedBox(height: 10),
              inputButton(
                  controller: passwordTextController,
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "Password",
                  context: context),
              const SizedBox(height: 10),
              Consumer<AuthenticationProvider>(
                  builder: (context, authProvider, child) {
                return customButton(
                    status: authProvider.status,
                    onTap: () {
                      authProvider.loginUser(
                        emailTextController.text.trim(),
                        passwordTextController.text.trim(),
                        context
                      );
                    },
                    context: context);
              })
            ],
          ),
        ),
      ),
    );
  }
}
