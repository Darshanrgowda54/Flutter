import 'package:flutter/material.dart';

class SigupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Create Account",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "1234567890",
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "abcd@gmail.com",
                  labelText: "Email or Gmail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password@123",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(200, 40),
              ),
              onPressed: () {
                debugPrint("Signup Button Clicked");
                Navigator.pop(context);
              },
              child: Text(
                "SignUp",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
