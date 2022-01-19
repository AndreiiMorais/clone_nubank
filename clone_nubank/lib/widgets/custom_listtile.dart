import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? trailing;
  final int? maxLines;
  final Widget? leading;
  final EdgeInsetsGeometry? contentPadding;
  TextOverflow? overflow;
  CustomListTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.maxLines,
      this.overflow,
      this.contentPadding,
      this.leading})
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
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: ListTile(
          leading: leading,
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
