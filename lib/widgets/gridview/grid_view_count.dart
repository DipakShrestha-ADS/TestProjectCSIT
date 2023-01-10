import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Count'),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2,
        children: List.generate(
          8,
          (index) => Container(
            color: Colors.red,
            child: Center(
              child: Text(
                'Index: $index',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
