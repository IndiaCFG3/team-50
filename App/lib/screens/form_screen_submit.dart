import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:assembler/constants.dart';
import 'package:assembler/screens/home_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormScreenSubmit extends StatefulWidget {
  FormScreenSubmit({this.tipNumber, this.secretCode});
  String tipNumber;
  String secretCode;
  static const String id = 'whistle_screen';

  @override
  _FormScreenSubmitState createState() => _FormScreenSubmitState();
}

class _FormScreenSubmitState extends State<FormScreenSubmit> {
  double contRad = 5;

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
                            "Thanks for submitting",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
//Tip Number
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
                                  "Reference Number",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 1,
                                  color: Color(0xffdddddd),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        widget.tipNumber,
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                        maxLines: 1,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Clipboard.setData(ClipboardData(
                                              text: "$widget.tipNumber"));
                                          Fluttertoast.showToast(
                                              msg: "Copied to Clipboard",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Colors.blueGrey,
                                              textColor: Colors.white,
                                              fontSize: 16.0);
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.copy,
                                          color: Color(0xffFDBE59),
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  height: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
//Buttons
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
                              color: Color(0xffcccccc),
                              borderRadius: BorderRadius.circular(20.0),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return HomeScreen();
                                      },
                                    ),
                                  );
                                },
                                minWidth: 100,
                                height: 37.0,
                                child: Text(
                                  "CLOSE",
                                  style: TextStyle(
                                    color: Colors.black,
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
