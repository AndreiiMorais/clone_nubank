import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? trailing;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  TextOverflow? overflow;
  CustomListTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.maxLines,
      this.overflow,
      this.contentPadding})
      : super(key: key) {
    if (maxLines == null) {
      overflow = null;
    } else {
      overflow = TextOverflow.ellipsis;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(),
      margin: const EdgeInsets.only(top: 3),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListTile(
          contentPadding: contentPadding,
          trailing: trailing,
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            subtitle,
            maxLines: maxLines,
            overflow: overflow,
          ),
        ),
      ),
    );
  }
}
