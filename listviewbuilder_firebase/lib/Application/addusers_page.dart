import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:listviewbuilder_firebase/components/mybutton.dart';
import 'package:listviewbuilder_firebase/components/mytextfield.dart';

class AddusersPage extends StatefulWidget {
  const AddusersPage({super.key});

  @override
  State<AddusersPage> createState() => _AddusersPageState();
}

class _AddusersPageState extends State<AddusersPage> {
  Future<void> submitData() async {
    final Map<String, dynamic> userData = {
      "Name": userNameController.text.trim(),
      "Phone Number": phoneNumberController.text.trim(),
      "Age": ageController.text.trim(),
      "Email": emailController.text.trim(),
    };
    try {
      await FirebaseFirestore.instance.collection("Users").add(userData);

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Data Submited Successfully")));
    } catch (error) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error.toString())));
    }
  }

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add User Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Mytextfield(myHintText: "Name", myController: userNameController),

            Mytextfield(
              myHintText: "Phone Number",
              myController: phoneNumberController,
            ),

            Mytextfield(myHintText: "Age", myController: ageController),

            Mytextfield(myHintText: "Email", myController: emailController),

            SizedBox(height: 30),
            Mybutton(
              myText: "Submit",
              onClicked: () {
                debugPrint("Submit Button Clicked");
                submitData();
              },
            ),
          ],
        ),
      ),
    );
  }
}
