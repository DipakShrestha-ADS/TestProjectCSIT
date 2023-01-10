import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/routingScreen/route_constants.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  // final String dataFromFirst;
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments;
    print('data from first screen: $data');
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, 'data from will pos scope');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(
          child: Column(
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteConstants.thirdScreenRoute);
                },
                child: Text(
                  'Go To Third Screen',
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context, 'data from second');
                },
                child: Text(
                  'Go Back To First Screen',
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
