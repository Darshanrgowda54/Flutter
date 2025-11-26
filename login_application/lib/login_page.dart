import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "Login Application",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter User ID or Gmail"),
            ),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Enter Password"),
            ),
          ),

          const SizedBox(height: 40),
          Text(
            "Forget Password ?",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              debugPrint("Sign In Button Clicked");
            },
            child: Text("Sign In"),
          ),

          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              debugPrint("Sign Up Button Clicked");
            },
            child: Text("Sign Up"),
          ),
        ],
      ),
    );
  }
}
