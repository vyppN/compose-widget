import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {

  final String title;
  final Color? color;

  const SmallText({super.key, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: color ?? Colors.black),
    );
  }

}