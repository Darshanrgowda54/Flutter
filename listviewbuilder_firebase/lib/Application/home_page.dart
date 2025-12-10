import 'package:flutter/material.dart';
import 'package:listviewbuilder_firebase/Application/addusers_page.dart';
import 'package:listviewbuilder_firebase/Application/viewusers_page.dart';
import 'package:listviewbuilder_firebase/components/mybutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Welcome Back",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 80),
            Mybutton(
              myText: "Add Users",
              onClicked: () {
                debugPrint("Add Users Button Clicked");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddusersPage()),
                );
              },
            ),

            SizedBox(height: 20),

            Mybutton(
              myText: "View Users",
              onClicked: () {
                debugPrint("View Users Button Clicked");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewusersPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
