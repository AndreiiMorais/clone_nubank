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
      padding: const EdgeInsets.only(top: 45, left: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[350],
            child: IconButton(
              icon: Icon(
                icon,
                color: Colors.black,
              ),
              onPressed: onPressed,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
