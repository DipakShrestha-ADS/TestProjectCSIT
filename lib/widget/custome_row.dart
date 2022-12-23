import 'package:flutter/material.dart';

class CustomeRow extends StatefulWidget {
  const CustomeRow({super.key});

  @override
  State<CustomeRow> createState() => _CustomeRowState();
}

class _CustomeRowState extends State<CustomeRow> {
  Widget buildcontainer() {
    return Container(
      height: 50,
      width: 30,
      color: Colors.green,
      child: Icon(Icons.video_call),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Wrap(
          spacing: 10, //horizental space between widgets
          runSpacing: 10, // vertical space between widgets,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //children ko total width calculate garera linxa width chai
              children: [
                Icon(Icons.camera),
                Icon(Icons.camera),
                Icon(Icons.camera),
                buildcontainer(),
                buildcontainer(),
                buildcontainer(),
                buildcontainer(),
                ...List.generate(100, (index) => buildcontainer())
              ],
            ),
          ]),
    );
  }
}
