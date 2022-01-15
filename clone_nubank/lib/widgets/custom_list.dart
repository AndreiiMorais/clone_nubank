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
      trailing = Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey.shade700,
          size: 17,
        ),
      );
    } else {
      trailing = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 5,
        child: ListView(
          padding: const EdgeInsets.only(top: 10, bottom: 20, left: 5),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ListTile(
              trailing: Padding(
                padding: const EdgeInsets.only(top: 38),
                child: trailing,
              ),
              title: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
