import 'package:flutter/material.dart';
import 'package:learning_provider/widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 14),
        itemCount: 12,
        itemBuilder: (context, index) => userCard(
          context: context,
          username: "Mkaychuks",
          email: "sachufusi@gmail.com",
          name: "Achufusi Ifeanyi"
        ),
      ),
    );
  }
}
