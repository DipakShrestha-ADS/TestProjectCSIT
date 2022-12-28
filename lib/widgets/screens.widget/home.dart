import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              ClipRect(
                child: Banner(
                  message: 'message',
                  location: BannerLocation.topEnd,
                  child: Container(
                    height: 150,
                    width: 250,
                    color: Colors.black87,
                  ),
                ),
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  title: Text("Lsttitle "),
                  subtitle: Text("subtitle pf list"),
                  leading: Icon(Icons.add_location),
                  trailing: Icon(Icons.add),
                ),
              ),
              Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ExpansionTile(
                  title: Text("List titke"),
                  subtitle: Text("subtitle pf list"),
                  leading: Icon(Icons.add),
                  trailing: Icon(Icons.add),
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.blue[200],
                    )
                  ],
                ),
              ),
              Chip(
                label: Text("Footbal"),
                elevation: 10,
                deleteIcon: Icon(
                  // inside it every icon can bve added with message//
                  Icons.delete,
                ),
                onDeleted: () {
                  print("object");
                },
                deleteButtonTooltipMessage: 'delete footbal',
              ),
              FlutterLogo(
                size: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assests/aa.jpg',
                    height: 300,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assests/aa.jpg'),
              ),
              Divider(
                thickness: 4,
                color: Colors.grey[900],
              ),
              CircleAvatar(
                radius: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset('assests/aa.jpg', fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
