import 'package:clone_nubank/pages/configs_page.dart';
import 'package:clone_nubank/pages/homepage.dart';
import 'package:clone_nubank/pages/me_ajuda_page.dart';
import 'package:clone_nubank/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: MeAjudaPage(),
    );
  }
}
