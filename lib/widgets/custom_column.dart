import 'package:flutter/material.dart';
import 'package:test_project/widgets/custom_container.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({Key? key}) : super(key: key);

  Widget buildContainer() {
    return Container(
      color: Colors.red,
      width: 120,
      height: 120,
      margin: EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer(),
                buildContainer(),
                buildContainer(),
                buildContainer(),
                buildContainer(),
              ],
            ),
          ),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
        ],
      ),
    );
  }
}
