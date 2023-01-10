import 'package:flutter/material.dart';
import 'package:test_project/widgets/listview/list_view_separated.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key}) : super(key: key);

  List<Widget> _buildWidgetList() {
    return List.generate(
      50,
      (index) {
        return Card(
          child: ListTile(
            title: Text(
              'Index Of: $index',
            ),
            subtitle: Text('Subtitle $index'),
            leading: Icon(Icons.add),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'List View Home',
          ),
        ),
        /*body: SingleChildScrollView(
          child: Column(
            children: _buildWidgetList(),
          ),
        ),*/
        // body: NormalListView(),
        body: ListViewSeparated(),
      ),
    );
  }
}
