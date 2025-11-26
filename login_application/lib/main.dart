import 'package:flutter/material.dart';
import 'package:login_application/login_page.dart';

void main() {
  runApp(LoginApplication());
}

class LoginApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}
