import 'package:flutter/material.dart';

class CustomeStack extends StatefulWidget {
  const CustomeStack({super.key});

  @override
  State<CustomeStack> createState() => _CustomeStackState();
}

class _CustomeStackState extends State<CustomeStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: 400,
          color: Colors.red,
        ),
        // Text(
        //   ("Hello world"),
        //   style: TextStyle(fontSize: 20),
        // ),
        Text.rich(TextSpan(
            text: "hellow",
            style: TextStyle(color: Colors.blue),
            children: [
              TextSpan(
                text: "world",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ])),
      ],
    );
  }
}
