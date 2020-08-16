import 'package:flutter/material.dart';
import 'package:assembler/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:assembler/screens/form_screen_submit.dart';
import 'package:requests/requests.dart';
import 'form_screen2.dart';

class FormScreen extends StatefulWidget {
  static const String id = 'whistle_screen';

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  double contRad = 5;

  String descriptionInfo = " " * 200;

  String name = " " * 200;

  static Color noShow = Color(0x00ffffff);
  static Color showIt = kWhistleBlowerColor;
  static Color toShowYD = noShow;
  static Color toShowSLF = noShow;
  static Color toShowDNT = noShow;

  final category = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];

  String classPresenceValue = '1';
  String confidenceValue = '1';
  String initiativeValue = '1';
  String preparationValue = '1';
  String helpingValue = '1';

  double bulbSize = 100;
  double whistleSize = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Column(
        children: <Widget>[
//AppBar
          Container(
            height: 20,
            color: kTeacherColor,
          ),
          Container(
            height: 40,
            color: kTeacherColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Teacher",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            height: 5,
            color: kTeacherColor,
          ),
          Container(
            height: 2,
            color: Colors.black26,
          ),
          Container(
            height: 1,
            color: Colors.black12,
          ),
//AppBar ends
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //Heading
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Enter Data",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
//Name
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(contRad),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Name",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 1,
                                  color: Color(0xffdddddd),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    String tmp = "";
                                    return showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15.0))),
                                            contentPadding:
                                                EdgeInsets.only(top: 10.0),
                                            content: Container(
                                              width: 300.0,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      SizedBox(
                                                        width: 30,
                                                      ),
                                                      Expanded(
                                                        child: Center(
                                                          child: Text(
                                                            "Description",
                                                            style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Icon(
                                                          FontAwesomeIcons
                                                              .timesCircle,
                                                          color: Colors.black,
                                                          size: 20,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 10),
                                                    height: 250,
                                                    decoration:
                                                        new BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                        color: Colors.blueGrey,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: TextField(
                                                        onChanged: (value) {
                                                          tmp = value;
                                                        },
                                                        maxLines: null,
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                        decoration:
                                                            new InputDecoration(
                                                          hintText:
                                                              'Type something here...',
                                                          border:
                                                              InputBorder.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                            horizontal: 88),
                                                    child: Material(
                                                      elevation: 5.0,
                                                      color:
                                                          kWhistleBlowerColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                      child: MaterialButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            if (tmp.length ==
                                                                0) {
                                                              tmp = " " * 200;
                                                            }
                                                            name = tmp;
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        minWidth: 80,
                                                        height: 37.0,
                                                        child: Text(
                                                          "Done",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Container(
                                    child: Text(
                                      name,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                      maxLines: 1,
                                    ),
                                    height: 35,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
//Class presence
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(contRad),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Class presence of the Student Teacher",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 1,
                                  color: Color(0xffdddddd),
                                ),
                                DropdownButton<String>(
                                  value: classPresenceValue,
                                  isExpanded: true,
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      classPresenceValue = newValue;
                                    });
                                  },
                                  items: category.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
//confidence
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(contRad),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "How confident is the student teacher while teaching",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 1,
                                  color: Color(0xffdddddd),
                                ),
                                DropdownButton<String>(
                                  value: confidenceValue,
                                  isExpanded: true,
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      confidenceValue = newValue;
                                    });
                                  },
                                  items: category.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
//initiative
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(contRad),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "How often the student teacher takes initiative",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 1,
                                  color: Color(0xffdddddd),
                                ),
                                DropdownButton<String>(
                                  value: initiativeValue,
                                  isExpanded: true,
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      initiativeValue = newValue;
                                    });
                                  },
                                  items: category.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
//preparation
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(contRad),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "How well the student teacher prepare in advance",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 1,
                                  color: Color(0xffdddddd),
                                ),
                                DropdownButton<String>(
                                  value: preparationValue,
                                  isExpanded: true,
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      preparationValue = newValue;
                                    });
                                  },
                                  items: category.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
//helping
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(contRad),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "How often the student teacher help teams",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 1,
                                  color: Color(0xffdddddd),
                                ),
                                DropdownButton<String>(
                                  value: helpingValue,
                                  isExpanded: true,
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      helpingValue = newValue;
                                    });
                                  },
                                  items: category.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //Buttons
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8),
                            child: Material(
                              elevation: 5.0,
                              color: kTeacherColor,
                              borderRadius: BorderRadius.circular(20.0),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return FormScreen2(
                                            classPresenceValue:
                                                classPresenceValue,
                                            confidenceValue: confidenceValue,
                                            initiativeValue: initiativeValue,
                                            preparationValue: preparationValue,
                                            helpingValue: helpingValue);
                                      },
                                    ),
                                  );
                                },
                                minWidth: 100,
                                height: 37.0,
                                child: Text(
                                  "NEXT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
