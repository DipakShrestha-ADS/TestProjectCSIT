import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('third Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Go Back To Second Screen',
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Go Back To First Screen',
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
