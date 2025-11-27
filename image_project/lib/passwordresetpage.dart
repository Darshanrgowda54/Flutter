import 'package:flutter/material.dart';

class Passwordresetpage extends StatefulWidget {
  @override
  State<Passwordresetpage> createState() => _PasswordresetpageState();
}

class _PasswordresetpageState extends State<Passwordresetpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Password Reset",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "User Name or Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "New Passowrd",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            SizedBox(height: 40),
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
                debugPrint("New password reset button Clicked");
                Navigator.pop(context);
              },
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
