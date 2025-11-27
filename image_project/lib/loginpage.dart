import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_project/homepage.dart';
import 'package:image_project/passwordresetpage.dart';
import 'package:image_project/signuppage.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  Future<void> Login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: validEmailController.text.trim(),
        password: vaildPasswordController.text.trim(),
      );

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Sucessful")));

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    } catch (error) {
      print("This is the error ${error.toString()}");
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error.toString())));
    }
  }

  final TextEditingController validEmailController = TextEditingController();
  final TextEditingController vaildPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Center(
              child: Image.asset(
                "assets/images/MainLogo.png",
                height: 80,
                width: 80,
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text("Welcome To SmartX Infinity", style: TextStyle(fontSize: 15)),

            SizedBox(height: 50),
            Text(
              "Mail ID",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
              ),
              child: TextField(
                controller: validEmailController,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "mymail@gmail.com",
                  contentPadding: EdgeInsets.only(left: 16),
                ),
              ),
            ),

            SizedBox(height: 30),
            Text(
              "Password",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
              ),
              child: TextField(
                controller: vaildPasswordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  contentPadding: EdgeInsets.only(left: 16),
                ),
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    debugPrint("forget password clicked");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Passwordresetpage(),
                      ),
                    );
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: Colors.blue[800], fontSize: 15),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800],
                foregroundColor: Colors.white,
                minimumSize: Size(400, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () {
                debugPrint("login clicked");
                Login();
              },
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By Clicking 'Login', You Agree To SmartX Infinity"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    debugPrint("terms & conditions clicked");
                  },
                  child: Text(
                    "Terms & Conditions And Privacy Policy",
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                ),
              ],
            ),

            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Not Yet Registered ?")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    debugPrint("create account clicked");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signuppage()),
                    );
                  },
                  child: Text(
                    "Create an Account",
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
