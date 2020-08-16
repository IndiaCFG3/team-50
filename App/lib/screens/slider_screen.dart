import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'home_screen.dart';
import 'package:assembler/constants.dart';

void main() {
  runApp(SliderScreen());
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SliderScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    checkOpen();
//  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Assembler",
        styleTitle: TextStyle(
            color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
        widgetDescription: Column(
          children: <Widget>[
            Text(
              "Inqui-Lab Foundation",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xffFDBE59),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "At Inqui-Lab, we aim to design, and create platforms and interventions that transform schools into places of creativity & innovation",
              style: TextStyle(
                fontSize: 17.5,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        pathImage: "images/s1.png",
        backgroundColor: Color(0xffdddddd),
      ),
    );
    slides.add(
      new Slide(
        title: "Assembler",
        styleTitle: TextStyle(
            color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
        widgetDescription: Column(
          children: <Widget>[
            Text(
              "Vision",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF91B6),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Prepare every child for the 21st century by nurturing a culture of creativity and innovation in schools",
              style: TextStyle(
                fontSize: 17.5,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        pathImage: "images/s2.png",
        backgroundColor: Color(0xffdddddd),
      ),
    );
    slides.add(
      new Slide(
        title: "Assembler",
        styleTitle: TextStyle(
            color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
        widgetDescription: Column(
          children: <Widget>[
            Text(
              "Reach",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff65E2D1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "28 Schools | 1350 Children | 3000+ Design Submissions | 350+ Prototypes",
              style: TextStyle(
                fontSize: 17.5,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        pathImage: "images/s3.png",
        backgroundColor: Color(0xffdddddd),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    print("Done");
    Navigator.push(context, SlideRightRoute(page: HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
