import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_provider/provider/post_provider.dart';
import 'package:learning_provider/screens/create_post_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var posts = Provider.of<PostProvider>(context).post;
    return Scaffold(
      appBar: AppBar(
        title: const Text("JSON Post Request"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => const CreatePostScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: posts.isEmpty
          ? const Center(
              child: Text(
                "No Posts available",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    shrinkWrap: true,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(posts[index].title[0]),
                        ),
                        title: Text(posts[index].title),
                        subtitle: Text(posts[index].body),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
