import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter Value',
  hintStyle: TextStyle(
    color: Colors.blueGrey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const TextStyle kLargeButtonTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

const double kBottomContainerHeight = 55;
const Color kBottomContainerColor = Color(0xFFEB1555);

const Color kActiveCardColor = Colors.green;
const Color kInactiveCardColor = Colors.redAccent;

const Color kWhistleBlowerColor = Color(0xffFDBE59);
const Color kTeacherColor = Color(0xffFF91B6);
const Color kManagerColor = Color(0xff65E2D1);
