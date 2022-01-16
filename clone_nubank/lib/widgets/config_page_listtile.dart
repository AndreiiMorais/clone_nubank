import 'package:flutter/material.dart';

class ConfigPageListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  const ConfigPageListTile({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(),
      margin: const EdgeInsets.only(top: 2),
      elevation: 3,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
      ),
    );
  }
}
