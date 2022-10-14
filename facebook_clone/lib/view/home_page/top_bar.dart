import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Text("facebook",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
              Spacer(),
              Icon(
                Icons.search,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.messenger,
                size: 25,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Co słychać?",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Spacer(),
              Icon(
                Icons.photo,
                color: Colors.lightGreenAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
