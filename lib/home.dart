import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Icon(Icons.settings),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.amber,
                  duration: Duration(microseconds: 1000),
                  content: Text(
                    'Welcome to settings on Tap',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ));
              },
            ),
            Icon(Icons.add_a_photo),
          ],
        ),
        shape: CircularNotchedRectangle(),
        notchMargin: 20,
      ),

      floatingActionButton: Builder(builder: (c) {
        return FloatingActionButton(
          onPressed: () {
            showBottomSheet(
                context: c,
                builder: (ctx) {
                  return Container(
                    color: Colors.amber,
                    height: 250,
                    width: size.width, //we created size and size is called
                    child: Text('Bottom Sheet'),
                  );
                });
          },
          child: Icon(
            Icons.home,
          ),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //+ widget is added at bottom center
    );
  }
}
