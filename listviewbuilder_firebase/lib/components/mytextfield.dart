import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String? myHintText;
  final TextEditingController? myController;

  const Mytextfield({
    super.key,
    required this.myHintText,
    required this.myController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: SizedBox(
        child: TextField(
          controller: myController,
          decoration: InputDecoration(
            hintText: myHintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
