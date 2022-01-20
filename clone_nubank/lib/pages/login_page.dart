import 'package:clone_nubank/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  LoginPage({Key? key}) : super(key: key);
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visible = false;

  fakeLoad() async {
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        visible = true;
      });
    });
  }

  @override
  void initState() {
    fakeLoad();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 150, right: 150, top: 12, bottom: 12),
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontSize: 17),
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
