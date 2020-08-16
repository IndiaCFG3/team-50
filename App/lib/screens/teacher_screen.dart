import 'package:flutter/material.dart';
import 'package:assembler/components/rounded_button.dart';
import 'package:assembler/constants.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'form_screen.dart';
import 'package:flutter/widgets.dart';

class TeacherScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _TeacherScreenState createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  bool showSpinner = false;
  String email;
  String password;

  String gotoNoCol = "d";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Column(
          children: <Widget>[
//AppBar

//AppBar ends
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Teacher",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "User Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          TextField(
                            onChanged: (value) {
                              email = value;
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          TextField(
                            onChanged: (value) {
                              password = value;
                            },
                            obscureText: true,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          Center(
                            child: RoundedButton(
                              title: 'Log In',
                              width: 150,
                              color: kTeacherColor,
                              onPressed: () async {
                                var url =
                                    'http://cfg-backend-rest.herokuapp.com/login';

                                // Await the http get response, then decode the json-formatted response.
                                var r = await http.post(
                                  url,
                                  headers: {
                                    "username": "teacher1",
                                    "password": "abcd"
                                  },
                                );
                                setState(() {
                                  //showSpinner = true;
                                  print("ZZZZZZZZZZZZZZ " + r.body);
                                  if (r.body.contains("Success")) {
//                                    Fluttertoast.showToast(
//                                        msg: "Login Done",
//                                        toastLength: Toast.LENGTH_SHORT,
//                                        gravity: ToastGravity.BOTTOM,
//                                        timeInSecForIosWeb: 1,
//                                        backgroundColor: Colors.blueGrey,
//                                        textColor: Colors.white,
//                                        fontSize: 16.0);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return FormScreen();
                                        },
                                      ),
                                    );
//                                    var jsonResponse =
//                                        convert.jsonDecode(r.body);
//
                                  } else {
                                    gotoNoCol = "wtong";
                                    showSpinner = false;
                                    Fluttertoast.showToast(
                                        msg: "Login Failed",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.blueGrey,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
