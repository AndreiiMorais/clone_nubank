import 'package:flutter/material.dart';

final theme = ThemeData(
  primaryColor: Colors.purple.shade700,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(color: Colors.black, fontSize: 18),
    headline6: TextStyle(color: Colors.black),
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  ),
  listTileTheme:
      const ListTileThemeData(horizontalTitleGap: 0, iconColor: Colors.black),
  iconTheme: const IconThemeData(color: Colors.black),
  
);
