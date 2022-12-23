import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({Key? key}) : super(key: key);

  Widget buildContainer() {
    return Container(
      color: Colors.tealAccent,
      width: 100,
      height: 50,
      margin: EdgeInsets.all(20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContainer(),
        buildContainer(),
        buildContainer(),
        ...List.generate(100, (index) {
          return buildContainer();
        }),
      ],
    );
  }
}
