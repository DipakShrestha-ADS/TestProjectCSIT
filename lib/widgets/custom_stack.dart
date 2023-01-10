import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 400,
          width: 400,
          color: Colors.red,
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
        ),
        Positioned(
          right: 150,
          bottom: -50,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
