import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool? checked;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Checkbox(
        value: checked,
        tristate: true,
        onChanged: (bool? value) {
          print('check value: $value');
          checked = value;
          setState(() {});
        },
        mouseCursor: SystemMouseCursors.forbidden,
      ),
    ]);
  }
}
