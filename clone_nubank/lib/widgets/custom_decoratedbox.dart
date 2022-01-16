import 'package:flutter/material.dart';

class CustomDecoratedBox extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  const CustomDecoratedBox(
      {Key? key, required this.child, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(left: 2, right: 2, bottom: 10, top: 10),
      decoration: BoxDecoration(
          color: Colors.grey[350], borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
