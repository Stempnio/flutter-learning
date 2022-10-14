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
