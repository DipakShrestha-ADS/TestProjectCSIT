import 'package:flutter/material.dart';

class IndexedStackedWidget extends StatefulWidget {
  const IndexedStackedWidget({Key? key}) : super(key: key);

  @override
  State<IndexedStackedWidget> createState() => _IndexedStackedWidgetState();
}

class _IndexedStackedWidgetState extends State<IndexedStackedWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IndexedStack(
          index: index,
          children: [
            Container(
              height: 250,
              width: 250,
              color: Colors.red,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
          ],
        ),
        OutlinedButton(
          onPressed: () {
            index = 1;
            setState(() {});
          },
          child: Text('Change Index'),
        ),
      ],
    );
  }
}
