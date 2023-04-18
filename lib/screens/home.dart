import 'package:flutter/material.dart';
import 'package:learning_provider/provider/post_provider.dart';
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
      body: posts.isEmpty
          ? Center(
              child: Consumer<PostProvider>(
                builder: (context, data, _) {
                  return ElevatedButton(
                    onPressed: () {
                      data.addPost();
                    },
                    child: Text("Press"),
                  );
                },
              ),
            )
          : Consumer<PostProvider>(
            builder: (context, data, _) {
              return RefreshIndicator(
                onRefresh: () async { 
                  data.addPost();
                 },
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                          itemCount: posts.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(child: Text(posts[index].title[0]),),
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
          ),
    );
  }
}
