import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: NeverScrollableScrollPhysics(),
      reverse: true,
      itemCount: 1000,
      itemBuilder: (ctx, index) {
        return Card(
          margin: EdgeInsets.zero,
          child: ListTile(
            title: Text(
              'Index: $index',
            ),
            leading: Icon(
              Icons.accessible_forward,
            ),
          ),
        );
      },
    );
  }
}
