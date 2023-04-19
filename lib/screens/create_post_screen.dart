import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_provider/provider/post_provider.dart';
import 'package:learning_provider/screens/home.dart';
import 'package:learning_provider/widgets/textfield.dart';
import 'package:provider/provider.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _body = TextEditingController();

  @override
  void dispose() {
    _title.dispose();
    _body.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Post"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: Column(
          children: [
            customTextField(controller: _title, hintext: "Title"),
            const SizedBox(
              height: 18,
            ),
            customTextField(controller: _body, hintext: "Body"),
            const SizedBox(
              height: 18,
            ),
            Consumer<PostProvider>(builder: (context, data, _) {
              return SizedBox(
                width: double.infinity,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {
                    data
                        .addPost(
                            title: _title.text.trim(),
                            body: _body.text.trim(),
                            context: context)
                        .then(
                          (value) => Navigator.of(context).pushAndRemoveUntil(
                            CupertinoPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                            (route) => false,
                          ),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      backgroundColor: Colors.purple),
                  child: const Text("Create Post"),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
