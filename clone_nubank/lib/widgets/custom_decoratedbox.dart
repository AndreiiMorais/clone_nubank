import 'package:flutter/material.dart';

class CustomDecoratedBox extends StatelessWidget {
  final Widget child;
  const CustomDecoratedBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[350], borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
