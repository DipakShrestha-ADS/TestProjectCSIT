import 'package:flutter/material.dart';
import 'package:test_project/widget/custom_container.dart';

class IndexStack extends StatefulWidget {
  const IndexStack({super.key});

  @override
  State<IndexStack> createState() => _IndexStackState();
}

class _IndexStackState extends State<IndexStack> {
  int index = 0;
  int myindex = 0;
  Widget mywidget = CustomeCustomer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IndexedStack(
            index: index,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ],
          ),
          Image.asset(
            "asset/1.png",
            cacheWidth: 350,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
              child: Text("press"))
        ],
      ),
    );
  }
}
