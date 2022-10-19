import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

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
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Author",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("@Author"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "date",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "asdf asd fasd fasdf as dfa sdf asdf as dfa asd fa sdf asdf as df asdf asf as df asdf sadf fsa d"),
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
                        Text("20"),
                        Spacer(),
                        Icon(Icons.share),
                        SizedBox(
                          width: 5,
                        ),
                        Text("20"),
                        Spacer(),
                        Icon(Icons.favorite_border),
                        SizedBox(
                          width: 5,
                        ),
                        Text("50"),
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
    // return SafeArea(
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: CircleAvatar(
    //           child: Icon(Icons.abc),
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   "Author",
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //                 Text("@Author"),
    //                 Text(
    //                   "date",
    //                 ),
    //               ],
    //             ),
    //             Text("Sample text"),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Icon(Icons.messenger),
    //                 // Spacer(),
    //                 Icon(Icons.favorite_border),
    //                 // Spacer(),
    //                 Icon(Icons.ios_share_rounded),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
