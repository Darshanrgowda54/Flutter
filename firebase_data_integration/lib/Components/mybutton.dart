import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String myText;
  final VoidCallback onTap;

  const Mybutton({super.key, required this.myText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[800],
          foregroundColor: Colors.white,
        ),
        onPressed: onTap,
        child: Text(
          myText,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
