import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_provider/model/post_model.dart';

class PostProvider extends ChangeNotifier {

  final _post = [];

  List get post => _post;


  addPost() async {
    const uri = "https://jsonplaceholder.typicode.com/posts";
    var newPost = Post(title: "A new day has come", body: "What a way to touch the sky");

    var response = await http.post(Uri.parse(uri), body: newPost.toJson());
    _post.add( Post.fromJson(jsonDecode(response.body)));
    notifyListeners();
  }

}