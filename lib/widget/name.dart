import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class myname extends StatefulWidget {
  const myname({super.key});

  @override
  State<myname> createState() => _mynameState();
}

class _mynameState extends State<myname> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Card(
                    child: Text("hwllo"),
                  );
                },
                separatorBuilder: (context, index) {
                  return Text("index:$index");
                },
                itemCount: 5)));
  }
}
