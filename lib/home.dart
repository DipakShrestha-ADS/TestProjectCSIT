import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("on tab"),
                    duration: Duration(seconds: 1),
                  ));
                },
                child: Icon(Icons.settings)),
            Icon(Icons.start)
          ],
        ),
        shape: CircularNotchedRectangle(),
        notchMargin: 20,
      ),
      floatingActionButton: Builder(
        builder: (c) {
          return FloatingActionButton(
            onPressed: () {
              showBottomSheet(
                  context: c,
                  builder: (c) {
                    return Container(
                      color: Colors.blue,
                      height: 250,
                      width: Size.width,
                      child: Text("dialog"),
                    );
                  });
            },
            child: Icon(Icons.home),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
