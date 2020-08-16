import 'package:flutter/material.dart';
import 'teacher_screen.dart';
import 'manger_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:assembler/components/rounded_button.dart';
import 'package:flutter/services.dart';
import 'package:assembler/constants.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation =
        ColorTween(begin: Colors.white, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0x00ffffff), //or set
      statusBarBrightness: Brightness.light, // color with: Color(0xFF0000FF)
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: TypewriterAnimatedTextKit(
//                  isRepeatingAnimation: false,
                    speed: Duration(milliseconds: 400),
                    text: ['Assembler'],
                    textStyle: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/logo.jpeg'),
                  height: 60.0,
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Teacher',
              color: kTeacherColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TeacherScreen();
                    },
                  ),
                );
              },
            ),
            Hero(
              tag: "lon",
              child: RoundedButton(
                title: 'Manager',
                color: kManagerColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ManagerScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
