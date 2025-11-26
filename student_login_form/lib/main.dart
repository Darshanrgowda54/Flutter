import 'package:flutter/material.dart';
import 'package:student_login_form/loginpage.dart';

void main() {
  runApp(studentloginform());
}

class studentloginform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: LoginPage());
  }
}
