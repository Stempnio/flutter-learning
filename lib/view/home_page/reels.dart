import 'package:facebook_clone/view/home_page/reels_card.dart';
import 'package:flutter/material.dart';

class Reels extends StatelessWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ReelsCard(),
      ),
    );
  }
}
