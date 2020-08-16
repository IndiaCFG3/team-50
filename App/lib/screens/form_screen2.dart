import 'package:flutter/material.dart';
import 'package:assembler/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:assembler/screens/form_screen_submit.dart';
import 'package:assembler/components/rounded_button.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';

class FormScreen2 extends StatefulWidget {
  static const String id = 'whistle_screen';
  final String classPresenceValue;
  final String confidenceValue;
  final String initiativeValue;
  final String preparationValue;
  final String helpingValue;
  FormScreen2(
      {this.classPresenceValue,
      this.confidenceValue,
      this.initiativeValue,
      this.preparationValue,
      this.helpingValue});

  @override
  _FormScreen2State createState() => _FormScreen2State();
}

class _FormScreen2State extends State<FormScreen2> {
  double contRad = 5;

  String feedbackInfo = " " * 200;
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

  String ratingValue = '1';

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
                            "Feedback and Rating",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),

//Feedback
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
                                  "Feedback (Optional)",
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
                                                            feedbackInfo = tmp;
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
                                      feedbackInfo,
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
//Rating
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
                                  "Overall Rating of the student teacher",
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
                                  value: ratingValue,
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
                                      ratingValue = newValue;
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
                      RoundedButton(
                        title: 'Upload Image',
                        width: 150,
                        color: kTeacherColor,
                        onPressed: () async {
                          File file = await FilePicker.getFile();
                        },
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
                                onPressed: () /*async*/ {
//                                  var r = await Requests.post(
//                                    'https://google.com',
//                                    headers: {
//                                      'User-Agent':
//                                          'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0',
//                                      'Accept':
//                                          'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
//                                      'Accept-Language': 'en-US,en;q=0.5',
//                                      'Accept-Encoding': 'gzip, deflate, br',
//                                      'Content-Type':
//                                          'application/x-www-form-urlencoded',
//                                    },
//                                  );
//                                  r.raiseForStatus();
//                                  String body = r.content();

                                  print(widget.helpingValue);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return FormScreenSubmit(
                                          tipNumber:
                                              "8V63817GD187", //tipNumber,
                                          secretCode: '1', //secretCode,
                                        );
                                      },
                                    ),
                                  );
                                },
                                minWidth: 100,
                                height: 37.0,
                                child: Text(
                                  "SUBMIT",
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
