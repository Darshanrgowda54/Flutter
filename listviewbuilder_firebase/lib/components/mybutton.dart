import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String? myText;
  final VoidCallback? onClicked;

  const Mybutton({super.key, required this.myText, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[800],
          foregroundColor: Colors.white,
          minimumSize: Size(400, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        onPressed: onClicked,
        child: Text(
          myText!,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
