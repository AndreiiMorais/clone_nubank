import 'package:flutter/material.dart';

class AjudaPageCustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  const AjudaPageCustomListTile({Key? key, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(),
      margin: EdgeInsets.only(top: 1),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListTile(
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
