import 'package:clone_nubank/controllers/login_controller.dart';
import 'package:clone_nubank/pages/area_pix.dart';
import 'package:clone_nubank/pages/configs_page.dart';
import 'package:clone_nubank/pages/homepage.dart';
import 'package:clone_nubank/pages/login_page.dart';
import 'package:clone_nubank/pages/me_ajuda_page.dart';
import 'package:clone_nubank/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: LoginPage(),
    );
  }
}
