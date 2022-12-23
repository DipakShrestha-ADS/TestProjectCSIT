import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomeCustomer extends StatelessWidget {
  const CustomeCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(10, 10), blurRadius: 10)
        ],
        color: Colors.blue,
      ),
      child: Text("container"),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10, left: 10),
    );
  }
}
