import 'package:flutter/material.dart';
import 'package:test_project/widgets/gridview/grid_view_count.dart';

class GridViewHome extends StatelessWidget {
  const GridViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return GridViewCount();
                  },
                ),
              );
            },
            child: Text('Go to Grid View'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Go to Grid View Builder'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Go to Grid View Custom'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Go to Grid View Extend'),
          ),
        ],
      ),
    );
  }
}
