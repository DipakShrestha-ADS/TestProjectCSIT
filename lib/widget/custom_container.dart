import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomeCustomer extends StatefulWidget {
  const CustomeCustomer({super.key});

  @override
  State<CustomeCustomer> createState() => _CustomeCustomerState();
}

class _CustomeCustomerState extends State<CustomeCustomer> {
  var myvalue;
  var _value;
  bool? checked = false;
  bool isSwitch = false;
  bool? ischeckbox = false;

  @override
  void initState() {
    myvalue = 1;
    _value = 1;

    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(10, 10), blurRadius: 10)
            ],
            color: Colors.blue,
          ),
          child: Checkbox(
            value: checked,
            // tristate: true, for null value
            onChanged: (bool? value) {
              checked = value;
              print(value);
              setState(() {});
            },
            mouseCursor: SystemMouseCursors.forbidden,
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 10, left: 10),
        ),
        SizedBox(
          height: 10,
        ),
        Radio(
            value: 1,
            groupValue: myvalue,
            onChanged: (value) {
              setState(() {
                myvalue = value;
              });
            }),
        RadioListTile(
            title: Text("My radio list tile"),
            subtitle: Text("Hello world"),
            value: 1,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = val;
              });
            }),
        RadioListTile(
            title: Text("My radio list tile"),
            subtitle: Text("Hello world"),
            value: 2,
            groupValue: _value,
            onChanged: (val) {
              setState(() {
                _value = val;
              });
            }),
        Switch(
            value: isSwitch,
            activeColor: Colors.blue,
            onChanged: (val) {
              setState(() {});
              isSwitch = val;
            }),
        Card(
          child: CheckboxListTile(
              title: Text("my checkbox list"),
              subtitle: Text("subtitle"),
              value: ischeckbox,
              onChanged: (values) {
                setState(() {
                  ischeckbox = values;
                });
              }),
        )
      ],
    );
  }
}
