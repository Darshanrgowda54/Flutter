import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_project/loginpage.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Welcome Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Loginpage()),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: Colors.red),
              ),

              SizedBox(width: 10),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: Colors.red),
              ),

              SizedBox(width: 10),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: Colors.red),
              ),

              SizedBox(width: 10),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
