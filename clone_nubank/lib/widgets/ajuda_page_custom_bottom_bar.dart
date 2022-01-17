import 'package:flutter/material.dart';

class AjudaPageCustomBottomBar extends StatelessWidget {
  final List<Widget> children;
  const AjudaPageCustomBottomBar({Key? key, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
