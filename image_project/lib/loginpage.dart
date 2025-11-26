import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
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
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(400, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () {
                debugPrint("login clicked");
              },
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold),
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
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
            ),

            SizedBox(height: 120),
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
                  },
                  child: Text(
                    "Create an Account",
                    style: TextStyle(color: Colors.blueAccent),
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
