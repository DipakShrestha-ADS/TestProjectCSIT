import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 400,
          width: 400,
          color: Colors.grey,
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.black87,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.amberAccent,
        ),
        Text.rich(
          TextSpan(
            text: 'hello',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
