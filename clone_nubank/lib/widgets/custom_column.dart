import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  IconData icon;
  CustomColumn(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        )
      ],
    );
  }
}
