import 'package:flutter/material.dart';
import 'package:learning_provider/provider/users_provider.dart';
import 'package:learning_provider/services/user_service.dart';
import 'package:learning_provider/widgets/user_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<UserModel>(context, listen: false).addUsersToList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<UserModel>(builder: (context, value, _) {
        return FutureBuilder(
          future: UserService().getallUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: value.users!.length,
                itemBuilder: (context, index) {
                  var user = value.users!;
                  return userCard(
                    username: user[index].username,
                    name: user[index].name,
                    email: user[index].email,
                    deleteTodo: () {
                      value.removeUserFromList(user[index]);
                    },
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        );
      }),
    );
  }
}
