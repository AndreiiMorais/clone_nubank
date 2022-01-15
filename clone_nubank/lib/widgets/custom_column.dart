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
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Column(
        children: [
          IconButton(
            icon: Icon(icon),
            onPressed: onPressed,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
