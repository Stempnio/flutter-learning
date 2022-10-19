import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:twitter_clone/posts/posts.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28,
              child: Icon(Icons.person),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          post.user,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("@${post.user}"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          DateFormat.yMd().add_jm().format(post.date),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(post.body),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.messenger),
                        SizedBox(
                          width: 5,
                        ),
                        Text("${post.comments}"),
                        Spacer(),
                        Icon(Icons.share),
                        SizedBox(
                          width: 5,
                        ),
                        Text("${post.shares}"),
                        Spacer(),
                        Icon(Icons.favorite_border),
                        SizedBox(
                          width: 5,
                        ),
                        Text("${post.likes}"),
                        Spacer(),
                        Icon(Icons.ios_share_rounded),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
