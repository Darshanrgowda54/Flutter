import 'package:flutter/material.dart';

class Listviewbuilder extends StatefulWidget {
  const Listviewbuilder({super.key});

  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.amber,
            ),
            margin: EdgeInsets.all(5),
            child: Center(
              child: Text(
                index.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      },
    );
  }
}
