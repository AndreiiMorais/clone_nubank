import 'package:flutter/material.dart';

class AreaPixPage extends StatelessWidget {
  const AreaPixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey.shade700,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.help_outline_outlined,
              color: Colors.grey.shade700,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
