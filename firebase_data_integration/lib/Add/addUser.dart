import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController rollnumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  Future<void> submitClicked() async {
    final Map<String, dynamic> userData = {
      "Name": nameController.text.trim(),
      "Mobile Number": numberController.text.trim(),
      "Email": emailController.text.trim(),
      "Roll Number": rollnumberController.text.trim().toUpperCase().trim(),
      "Address": addressController.text.trim(),
    };
    try {
      debugPrint("Attempting to add data: $userData");
      await FirebaseFirestore.instance.collection("Users").add(userData);

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Data Submitted Successfully")));
    } catch (error) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Data not Submitted")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Users to List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // SizedBox(height: 80),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Name",
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: numberController,
              decoration: InputDecoration(
                hintText: "Phone Number",
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: rollnumberController,
              decoration: InputDecoration(
                hintText: "Roll Number",
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                hintText: "Address",
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800],
                foregroundColor: Colors.white,
                minimumSize: Size(400, 50),
              ),
              onPressed: () {
                debugPrint("Submit Button Clicked");
                submitClicked();
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
