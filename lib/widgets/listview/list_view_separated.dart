import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 100,
      itemBuilder: (ctx, index) {
        return SizedBox(
          width: 150,
          child: ListTile(
            title: Text('index: $index'),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return SizedBox(
          width: 20,
          height: 20,
        );
      },
    );
  }
}
