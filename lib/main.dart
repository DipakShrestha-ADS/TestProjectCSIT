import 'package:flutter/material.dart';
import 'package:test_project/home.dart';
import 'package:test_project/widget/custom_container.dart';
import 'package:test_project/widget/custome_row.dart';
import 'package:test_project/widget/custome_stack.dart';
import 'package:test_project/widget/indexed_stack.dart';

void main() {
  runApp(MaterialApp(
    home: myhome(),
  ));
}

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  int myindex = 0;
  Widget mywidget = IndexStack();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("widget")),
      body: mywidget,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myindex,
          onTap: (index) {
            myindex = index;
            if (index == 0) {
              mywidget = IndexStack();
            } else if (myindex == 1) {
              mywidget = CustomeCustomer();
            } else
              mywidget = CustomeRow();

            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "setting"),
            BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery), label: "gallery")
          ]),
      // body: SingleChildScrollView(
      //     scrollDirection: Axis.vertical, child: CustomeStack()),
    );
  }
}

// class AboutPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text(
//               'About Page',
//             ),
//             actions: [
//               Builder(builder: (context) {
//                 return ElevatedButton(
//                   onPressed: () {
//                     Scaffold.of(context).openEndDrawer();
//                   },
//                   child: const Icon(
//                     Icons.home,
//                     color: Colors.white,
//                   ),
//                 );
//               }),
//             ],
//             leading: Builder(builder: (ctx) {
//               return IconButton(
//                 onPressed: () {
//                   ///open drawer using scafffold
//                   Scaffold.of(ctx).openDrawer(); // ctx=context
//                 },
//                 icon: const Icon(
//                   Icons.menu,
//                   color: Colors.white,
//                 ),
//               );
//             }),
//           ),
//           body: Center(
//             child: Text(
//               'Center Text',
//             ),
//           ),
//           drawer: Drawer(
//             child: ListView(
//               children: [
//                 Icon(
//                   Icons.image,
//                   color: Colors.red,
//                   size: 50,
//                 ),
//                 Builder(builder: (context) {
//                   return ElevatedButton(
//                       onPressed: () {
//                         Scaffold.of(context).closeDrawer();
//                       },
//                       child: Icon(Icons.close));
//                 }),
//                 Text(
//                   'Full Name',
//                 ),
//                 Text(
//                   'Address',
//                 ),
//                 Divider(
//                   color: Colors.black,
//                 ),
//                 Card(
//                   child: ListTile(
//                     title: Text(
//                       'First Menu',
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: ListTile(
//                     title: Text(
//                       'Second Menu',
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: ListTile(
//                     title: Text(
//                       'Third Menu',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           onDrawerChanged: (val) {
//             print(val);
//           },
//           endDrawer: Drawer(
//               child: ListView(
//             children: [
//               UserAccountsDrawerHeader(
//                 accountName: Text("Diwash"),
//                 accountEmail: Text("diwsh@gmail.com"),
//                 currentAccountPicture: Icon(Icons.circle),
//               )
//             ],
//           )),
//           persistentFooterButtons: [
//             OutlinedButton(onPressed: () {}, child: Text("home")),
//             OutlinedButton(onPressed: () {}, child: Text("about")),
//             OutlinedButton(onPressed: () {}, child: Text("account"))
//           ],
//           bottomNavigationBar: Container(
//             height: 80,
//             color: Colors.blue,
//           ),
//         ),
//       ),
//     );
//   }
// }
