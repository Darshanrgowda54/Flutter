import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewusersPage extends StatefulWidget {
  const ViewusersPage({super.key});

  @override
  State<ViewusersPage> createState() => _ViewusersPageState();
}

class _ViewusersPageState extends State<ViewusersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View Users Data",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Expanded(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("Users").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(child: Text("Something Went Wrong"));
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            final usersList = snapshot.data!.docs;

            if (usersList.isEmpty) {
              return const Center(child: Text("User Data Not Found"));
            }

            return ListView.builder(
              itemCount: usersList.length,
              itemBuilder: (context, index) {
                final userData =
                    usersList[index].data() as Map<String, dynamic>;

                final userName = userData["Name"] ?? "";
                final phoneNumber = userData["Phone Number"] ?? "";
                final age = userData["Age"] ?? "";
                final email = userData["Email"] ?? "";

                return Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Expanded(child: Text(userName)),
                      Expanded(child: Text(phoneNumber)),
                      Expanded(child: Text(age)),
                      Expanded(child: Text(email)),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
