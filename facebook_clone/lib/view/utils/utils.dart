import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({Key? key, required this.space}) : super(key: key);

  final double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: space);
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({Key? key, required this.space}) : super(key: key);

  final double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: space);
  }
}
