import 'package:facebook_clone/view/home_page/post.dart';
import 'package:facebook_clone/view/home_page/reels.dart';
import 'package:facebook_clone/view/home_page/top_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Widget _blackDivider = const Divider(
    color: Colors.black26,
    height: 20,
    thickness: 7,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              const TopBar(),
              _blackDivider,
              const Reels(),
              _blackDivider,
            ],
          );
        } else {
          return Column(
            children: [
              const Post(),
              _blackDivider,
            ],
          );
        }
      }),
    );
  }
}
