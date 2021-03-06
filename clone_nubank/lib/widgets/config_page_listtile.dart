import 'package:flutter/material.dart';

class ConfigPageListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  const ConfigPageListTile({Key? key, required this.icon, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(),
      margin: const EdgeInsets.only(top: 2),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListTile(
          onTap: onTap,
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
      ),
    );
  }
}
