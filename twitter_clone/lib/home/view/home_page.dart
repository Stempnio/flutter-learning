import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitter_clone/posts/posts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              title: FaIcon(
                FontAwesomeIcons.twitter,
                size: 40,
                color: Colors.blueAccent,
              ),
              leadingWidth: 100,
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.star_border_purple500_outlined,
                    size: 30,
                  ),
                ),
              ],
              leading: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white60,
                    child: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: PostsPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
