import 'package:flutter/material.dart';
import 'package:test_project/widgets/custom_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //CustomRow(),
              //CustomColumn(),
              CustomStack(),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'About Page',
          ),
          actions: [
            Builder(builder: (ctx) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(ctx).openEndDrawer();
                },
                icon: Icon(
                  Icons.menu_book,
                ),
              );
            })
          ],
          leading: Builder(builder: (ctx) {
            return IconButton(
              onPressed: () {
                ///open drawer using scafffold
                Scaffold.of(ctx).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            );
          }),
        ),
        body: Center(
          child: Text(
            'Center Text',
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Icon(
                Icons.image,
                color: Colors.red,
                size: 50,
              ),
              Text(
                'Full Name',
              ),
              Text(
                'Address',
              ),
              Divider(
                color: Colors.black,
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'First Menu',
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Second Menu',
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Third Menu',
                  ),
                ),
              ),
            ],
          ),
        ),
        onDrawerChanged: (val) {
          print('on drawer chnage:$val');
        },
        endDrawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("acount namer"),
                accountEmail: Text('youreamila@gmail.com'),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          OutlinedButton(
            onPressed: () {},
            child: Text("Home"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Profile"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Index"),
          ),
        ],
        bottomNavigationBar: Container(
          height: 80,
          color: Colors.red,
        ),
      ),
    );
  }
}
