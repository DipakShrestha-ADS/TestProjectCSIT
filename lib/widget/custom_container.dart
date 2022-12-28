import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomeCustomer extends StatefulWidget {
  const CustomeCustomer({super.key});

  @override
  State<CustomeCustomer> createState() => _CustomeCustomerState();
}

class _CustomeCustomerState extends State<CustomeCustomer> {
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(10, 10), blurRadius: 10)
        ],
        color: Colors.blue,
      ),
      child: Checkbox(
        value: checked,
        tristate: true,
        onChanged: (bool? value) {
          checked = value;
          print(value);
          setState(() {});
        },
        mouseCursor: SystemMouseCursors.forbidden,
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10, left: 10),
    );
  }
}
//radiobutton
//switch
//checkboxlisttile