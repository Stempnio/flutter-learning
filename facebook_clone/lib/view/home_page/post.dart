import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    child: Icon(
                      Icons.account_circle,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "User xyz",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text("10 godz."),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.close,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Image.network(
          "https://petapixel.com/assets/uploads/2022/07/DALLEcopy.jpg",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(children: [
            Row(
              children: const [
                Icon(
                  Icons.thumb_up,
                  size: 15,
                ),
                SizedBox(
                  width: 7,
                ),
                Text("3,2 tys."),
                Spacer(),
                Text("102 komentarze"),
                SizedBox(
                  width: 10,
                ),
                Text("143 udostępienia"),
              ],
            ),
            const Divider(),
            Row(
              children: const [
                Spacer(),
                Icon(Icons.thumb_up_alt_outlined),
                SizedBox(
                  width: 5,
                ),
                Text("Lubie to!"),
                Spacer(
                  flex: 3,
                ),
                Icon(Icons.mode_comment),
                SizedBox(
                  width: 5,
                ),
                Text("Skomentuj"),
                Spacer(
                  flex: 3,
                ),
                Icon(Icons.share_outlined),
                SizedBox(
                  width: 5,
                ),
                Text("Udostępnij"),
                Spacer(),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
