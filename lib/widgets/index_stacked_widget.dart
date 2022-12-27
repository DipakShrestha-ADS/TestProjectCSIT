import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({Key? key}) : super(key: key);

  @override
  State<IndexedStackWidget> createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
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
          child: Text('Index changed'),
        ),
      ],
    );
  }
}
