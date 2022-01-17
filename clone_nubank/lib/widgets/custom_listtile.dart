import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? trailing;
  const CustomListTile(
      {Key? key, required this.title, required this.subtitle, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(),
      margin: const EdgeInsets.only(top: 3),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListTile(
          trailing: trailing,
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
