import 'package:flutter/material.dart';
import 'package:test_project/widget/custom_container.dart';

class IndexStack extends StatefulWidget {
  const IndexStack({super.key});

  @override
  State<IndexStack> createState() => _IndexStackState();
}

class _IndexStackState extends State<IndexStack> {
  int index = 0;
  int myindex = 0;
  Widget mywidget = CustomeCustomer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IndexedStack(
              index: index,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
              ],
            ),
            // Image.asset(
            //   "asset/1.png",
            //   cacheWidth: 350, // to decrease the  file size of the image
            // ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Text("press")),
            // ClipRRect(
            //     child: Banner(
            //   message: "message",
            //   location: BannerLocation.topEnd,
            //   child: Container(
            //     width: 100,
            //     height: 200,
            //     color: Colors.green,
            //   ),
            // )),
            Card(
              child: ListTile(
                leading: Icon(Icons.card_travel),
                trailing: Icon(
                  Icons.telegram,
                ),
                title: Text("my text"),
              ),
            ),
            Card(
              child: ExpansionTile(
                //like a drop down
                title: Text("helloworld"),
                subtitle: Text("flutter doctoar"),
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Chip(
              label: Text("football"),
              elevation: 5,
              deleteIcon: Icon(Icons.delete),
              deleteButtonTooltipMessage: "Deleted item",
              onDeleted: () {},
            ),
            ClipRRect(
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  "asset/1.png",
                  cacheWidth: 350,
                ),
              ),
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("asset/1.png"),
            )
          ],
        ),
      ),
    );
  }
}
