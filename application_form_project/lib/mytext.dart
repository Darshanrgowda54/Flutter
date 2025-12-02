import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final IconData? icon;

  const Mytext({
    super.key,
    required this.text,
    this.textColor = Colors.black,
    this.fontSize = 16,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(fontSize: fontSize, color: textColor),
        ),
      ],
    );
  }
}
