import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.purple.shade700,
        child: Center(
          child: Image.asset(
            'assets/nubank_splash.png',
            height: 100,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'Entrar',
        ),
        extendedPadding: EdgeInsets.all(160),
        onPressed: () {},
      ),
    );
  }
}
