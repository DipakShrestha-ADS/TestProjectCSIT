import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

//Radio Button
//Switch
//CheckboxListTile
class _ProfileState extends State<Profile> {
  bool? checked;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SizedBox(
            child: Image.asset(
              'assets/messi.jpeg',
              fit: BoxFit.cover,
            ),
            width: 100,
            height: 100,
          ),
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.center,
            heightFactor: 0.9,
            child: Image.asset(
              'assets/messi.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
