import 'package:flutter/material.dart';
import 'package:twitter_clone/posts/posts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PostsPage(),
      ),
    );
  }
}
