import 'package:flutter/material.dart';

class ReelsCard extends StatelessWidget {
  const ReelsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: SizedBox(
        // width: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          // decoration: BoxDecoration(
          //   color: Colors.grey,
          //   borderRadius: BorderRadius.circular(20),
          // ),
          child: Stack(
            children: [
              Image.network(
                "https://fujifilm-x.com/wp-content/uploads/2021/01/gfx100s_sample_04_thum-1.jpg",
                height: 150,
                width: 100,
                fit: BoxFit.fill,
              ),
              Positioned(
                left: 10,
                top: 120,
                child: Text(
                  "User",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
