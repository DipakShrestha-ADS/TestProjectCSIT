import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
        'Container',
        style: TextStyle(
          fontSize: 40,
          color: Colors.black87,
        ),
        textAlign: TextAlign.right,
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
      ),
    );
  }
}
