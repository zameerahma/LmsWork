import 'package:flutter/material.dart';

class LoginSucess extends StatelessWidget {
  const LoginSucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Login SucessFully'),
      ),
    );
  }
}

class SignupSucess extends StatelessWidget {
  const SignupSucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SignUp SucessFully'),
      ),
    );
  }
}
