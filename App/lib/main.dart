import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/slider_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

//void main() {
//  runApp(MyApp());
//}
//in.co.amangupta

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      '/HomePage': (BuildContext context) => new HomeScreen(),
      '/WelcomePage': (BuildContext context) => new SliderScreen()
    },
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  startTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstTime = prefs.getBool('first_time');

    var _duration = new Duration(milliseconds: 100);

    if (firstTime != null && !firstTime) {
      // Not first time -> navigationPageHome
      return new Timer(_duration, navigationPageHome); //Home should be here
    } else {
      // First time
      prefs.setBool('first_time', false);
      return new Timer(_duration, navigationPageWel); //Wel should be here
    }
  }

  void navigationPageHome() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }

  void navigationPageWel() {
    Navigator.of(context).pushReplacementNamed('/WelcomePage');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffdddddd),
    );
  }
}
