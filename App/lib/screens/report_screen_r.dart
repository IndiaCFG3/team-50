import 'dart:async';
import 'package:flutter/material.dart';
import 'package:assembler/constants.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ReportScreenR extends StatefulWidget {
  @override
  _ReportScreenRState createState() => _ReportScreenRState();
}

class _ReportScreenRState extends State<ReportScreenR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Column(
        children: <Widget>[
//Appbar
          Container(
            height: 20,
            color: kManagerColor,
          ),
          Container(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Text(
                  "NixWhistle",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            height: 15,
            color: kManagerColor,
          ),
          Container(
            height: 40,
            color: kManagerColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Reviewer",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            height: 5,
            color: kManagerColor,
          ),
          Container(
            height: 2,
            color: Colors.black26,
          ),
          Container(
            height: 1,
            color: Colors.black12,
          ),
//Appbar end
          Expanded(
            child: WebviewScaffold(
              url: "https://google.com",
            ),
          ),
        ],
      ),
    );
  }
}
