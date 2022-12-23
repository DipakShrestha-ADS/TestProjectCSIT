import 'package:flutter/material.dart';
import 'package:test_project/widgets/custom_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets'),
        ),
        body: CustomContainer(),
      ),
    );
  }
}
