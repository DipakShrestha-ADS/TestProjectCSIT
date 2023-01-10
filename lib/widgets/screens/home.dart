import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              child: Banner(
                message: 'message',
                location: BannerLocation.topEnd,
                child: Container(
                  width: 250,
                  height: 150,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text('List Title Tittle'),
                subtitle: Text('Subtitle here'),
                leading: Icon(Icons.accessible_forward),
                trailing: Icon(Icons.add),
                onTap: () {},
              ),
            ),
            Tooltip(
              message: 'this is card and expansion tile.',
              child: Card(
                elevation: 10,
                child: ExpansionTile(
                  title: Text('List Title Tittle'),
                  subtitle: Text('Subtitle here'),
                  leading: Icon(Icons.accessible_forward),
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            Chip(
              label: Text('Football'),
              elevation: 5,
              deleteIcon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onDeleted: () {
                print('delted call');
              },
              deleteButtonTooltipMessage: 'Delete Football',
            ),
            FlutterLogo(
              size: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/messi.jpeg',
                ),
              ),
            ),
            CircleAvatar(
              radius: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    'assets/messi.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 3,
              width: double.infinity,
              color: Colors.grey,
            ),
            Divider(
              thickness: 4,
              color: Colors.green,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/messi.jpeg'),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                  ),
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 5,
                  ),
                  Icon(
                    Icons.settings,
                  ),
                ],
              ),
            ),
            Checkbox(
              value: checked,
              onChanged: (bool? value) {
                print('check box clocked: $value');
                checked = value ?? false;
              },
            ),
          ],
        ),
      ),
    );
  }
}
