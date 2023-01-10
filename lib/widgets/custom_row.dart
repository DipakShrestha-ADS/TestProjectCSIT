import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Wrap(
        spacing: 10,
        runSpacing: 20,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.add_a_photo,
            size: 50,
          ),
          Icon(
            Icons.add,
            size: 50,
          ),
          Icon(
            Icons.accessible_forward,
            size: 30,
          ),
          Icon(
            Icons.add_a_photo,
            size: 50,
          ),
          Icon(
            Icons.add,
            size: 50,
          ),
          Icon(
            Icons.accessible_forward,
            size: 30,
          ),
          Icon(
            Icons.add_a_photo,
            size: 50,
          ),
          Icon(
            Icons.add,
            size: 50,
          ),
          Icon(
            Icons.accessible_forward,
            size: 30,
          ),
          Icon(
            Icons.add_a_photo,
            size: 50,
          ),
          Icon(
            Icons.add,
            size: 50,
          ),
          Icon(
            Icons.accessible_forward,
            size: 30,
          ),
        ],
      ),
    );
  }
}
