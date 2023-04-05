import 'package:flutter/material.dart';
import 'package:learning_provider/Widgets/custom_button.dart';
import 'package:learning_provider/Widgets/custom_input.dart';

class CreateTodoScreen extends StatelessWidget {
  const CreateTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(elevation: 0, title: const Text("Create Todo"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            customInput(context: context),
            const SizedBox(height: 20,),
            customButtion(onPressed: (){}, title: "Submit",context: context)
          ],
        ),
      ),
    );
  }
}
