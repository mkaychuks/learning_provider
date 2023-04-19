import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_provider/model/post_model.dart';

class PostProvider extends ChangeNotifier {
  final _post = [];

  List get post => _post;

  Future addPost(
      {required String title,
      required String body,
      BuildContext? context}) async {
    const uri = "https://jsonplaceholder.typicode.com/posts";
    var newPost = Post(title: title, body: body);

    var response = await http.post(Uri.parse(uri), body: newPost.toJson());
    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context!).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.purple,
          content: Text("Post Successful"),
        ),
      );
      _post.add(Post.fromJson(jsonDecode(response.body)));
      notifyListeners();
    }
  }
}
