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
      padding: const EdgeInsets.only(top: 35, bottom: 30),
      child: SizedBox(
        width: 92,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                style: Theme.of(context).textTheme.bodyText1,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
