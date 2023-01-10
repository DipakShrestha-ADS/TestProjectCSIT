import 'package:flutter/material.dart';

class NormalListView extends StatefulWidget {
  const NormalListView({Key? key}) : super(key: key);

  @override
  State<NormalListView> createState() => _NormalListViewState();
}

class _NormalListViewState extends State<NormalListView> {
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

  final scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      print('offset: ${scrollController.offset}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: _buildWidgetList(),
    );
  }
}
