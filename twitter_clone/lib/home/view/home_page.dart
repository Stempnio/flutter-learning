import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitter_clone/posts/posts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: Colors.black.withOpacity(0.2),
              centerTitle: true,
              title: Icon(
                Icons.flight_takeoff,
                color: Colors.blueAccent,
                size: 45,
              ),
              leadingWidth: 100,
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.star_border_purple500_outlined),
                ),
              ],
              leading: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.person_outline_outlined),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: PostsPage(),
    );
  }
}
