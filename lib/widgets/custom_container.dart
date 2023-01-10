import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(10, 10),
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(20, 30),
            blurRadius: 5,
          ),
        ],
      ),
      child: Text(
        'Container',
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
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
