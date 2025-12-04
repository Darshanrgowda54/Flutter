import 'package:flutter/material.dart';
import 'package:insertdata_firebase/Add/addUser.dart';
import 'package:insertdata_firebase/Components/mybutton.dart';
import 'package:insertdata_firebase/Delete/delete.dart';
import 'package:insertdata_firebase/Read/read.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Mybutton(
              myText: "Add User",
              onTap: () {
                debugPrint("Add button Clicked");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddUser()),
                );
              },
            ),

            SizedBox(height: 20),
            Mybutton(
              myText: "Read User",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Read()),
                );
              },
            ),

            SizedBox(height: 20),
            Mybutton(
              myText: "Delete User",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Delete()),
                );
              },
            ),

            SizedBox(height: 20),
            Mybutton(
              myText: "Update User",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Read()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
