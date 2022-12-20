import 'package:flutter/material.dart';
import 'package:test_project/home.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
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
