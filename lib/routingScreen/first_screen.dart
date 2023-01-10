import 'package:flutter/material.dart';
import 'package:test_project/routingScreen/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SecondScreen();
                    },
                  ),
                );
              },
              child: Text(
                'Go To Second Screen',
              ),
            ),
            OutlinedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: 'DAta From Arguments',
                );
                print('result from second screen : $result');
              },
              child: Text(
                'Go To Second Screen With Named',
              ),
            )
          ],
        ),
      ),
    );
  }
}
