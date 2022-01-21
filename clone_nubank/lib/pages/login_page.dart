import 'package:clone_nubank/controllers/login_controller.dart';
import 'package:clone_nubank/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final BiometricAuth auth = BiometricAuth();

  bool visible = false;

  fakeLoad() {
    setState(() {
      visible = true;
    });
  }

  @override
  void initState() {
    super.initState();
    auth.autenticar(context);
  }

  @override
  Widget build(BuildContext context) {
    fakeLoad();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.purple.shade700,
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/nubank_splash.png',
              height: 100,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Visibility(
                visible: visible,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  onPressed: () {
                    auth.autenticar(context);
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 150),
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
