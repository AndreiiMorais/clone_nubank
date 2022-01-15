import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomList extends StatelessWidget {
  final List<Widget> children;
  final bool arrow;
  Widget? trailing;
  CustomList({
    Key? key,
    required this.children,
    required this.arrow,
    this.trailing,
  }) : super(key: key) {
    if (arrow == true) {
      trailing = Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey.shade700,
        size: 18,
      );
    } else {
      trailing = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListView(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          ListTile(
            trailing: Padding(
              padding: const EdgeInsets.only(top: 38),
              child: trailing,
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
