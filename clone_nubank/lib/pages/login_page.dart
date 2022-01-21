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
  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  bool visible = false;
  bool autenticado = false;

  fakeLoad() {
    setState(() {
      visible = true;
    });
  }

  void autorizado() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );

    _checkBiometrics();
    _getAvailableBiometrics();
    _authenticate();
  }

  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = <BiometricType>[];
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<bool> _authenticate() async {
    bool authenticated = false;
    try {
      _isAuthenticating = true;
      _authorized = 'Authenticating';

      authenticated = await auth.authenticate(
          localizedReason: 'Let OS determine authentication method',
          useErrorDialogs: true,
          stickyAuth: true);

      _isAuthenticating = false;
    } on PlatformException catch (e) {
      print(e);

      _isAuthenticating = false;
      _authorized = 'Error - ${e.message}';

      // return;
    }
    if (!mounted) {
      // return;
    }
    setState(() {
      _authorized = authenticated ? 'Authorized' : 'Not Authorized';
      autenticado = authenticated;
      
    });
    return autenticado;
  }

  @override
  Widget build(BuildContext context) {
    fakeLoad();
    return Scaffold(
        body: FutureBuilder<bool>(
      future: autenticado,
      initialData: _authorized,
      builder: (context, snapshot) {
        if (snapshot == 'Authorized') {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
          return SizedBox();
        } else if (snapshot.data == 'Not Authorized') {
          fakeLoad();
        }
        return Container(
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
        );
      },
    ));
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
