import 'package:flutter/material.dart';
import 'package:test_project/formAndValidation/sign_up.dart';
import 'package:test_project/widgets/screens/gallery.dart';
import 'package:test_project/widgets/screens/home.dart';
import 'package:test_project/widgets/screens/profile.dart';
import 'package:test_project/widgets/screens/settings.dart';

void main() {
  runApp(MaterialApp(
    // home: FirstScreen(),
    routes: {
      '/sign-up': (ctx) {
        return SignUp();
      },
    },
    initialRoute: '/sign-up',
    /*onGenerateRoute: (routeSetting) {
      final routeName = routeSetting.name;
      print('route name: $routeName');
      if (routeName == RouteConstants.firstScreenRoute) {
        return MaterialPageRoute(
          builder: (ctx) {
            return FirstScreen();
          },
        );
      } else if (routeName == RouteConstants.secondScreenRoute) {
        return MaterialPageRoute(
          builder: (ctx) {
            return SecondScreen();
          },
        );
      } else if (routeName == RouteConstants.thirdScreenRoute) {
        return MaterialPageRoute(
          builder: (ctx) {
            return ThirdScreen();
          },
        );
      }
      return MaterialPageRoute(
        builder: (ctx) {
          return FirstScreen();
        },
      );
    },*/
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  Widget screenWidget = Home();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets'),
        ),
        body: screenWidget,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.orange,
          currentIndex: currentIndex,
          onTap: (index) {
            print('index : $index');
            currentIndex = index;
            if (index == 0) {
              screenWidget = Home();
            } else if (index == 1) {
              screenWidget = Profile();
            } else if (index == 2) {
              screenWidget = Settings();
            } else {
              screenWidget = Gallery();
            }
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: 'Gallery',
            ),
          ],
        ),
      ),
    );
  }
}
