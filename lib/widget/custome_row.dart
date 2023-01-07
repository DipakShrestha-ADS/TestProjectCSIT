import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomeRow extends StatefulWidget {
  const CustomeRow({super.key});

  @override
  State<CustomeRow> createState() => _CustomeRowState();
}

class _CustomeRowState extends State<CustomeRow> {
  List<Widget> _name() {
    return List.generate(
        5,
        (index) => ListTile(
              leading: Text("index of:$index"),
              trailing: Icon(Icons.camera),
            ));
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
                BuildContainer(
                    height: 20,
                    width: 30,
                    color: Colors.red,
                    icon: Icons.read_more),
                BuildContainer(
                    height: 20,
                    width: 30,
                    color: Colors.green,
                    icon: Icons.read_more),
                ...List.generate(
                  // list vitra list use gareko hunale ... use gareko
                  100,
                  (index) => BuildContainer(
                      height: 10,
                      width: 20,
                      color: Colors.blue,
                      icon: Icons.stacked_bar_chart),
                )
              ],
            ),
          ]),
    );
  }
}

class BuildContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final IconData icon;
  const BuildContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: Icon(icon),
    );
  }
}
