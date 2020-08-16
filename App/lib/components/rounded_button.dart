import 'package:flutter/material.dart';
import 'package:assembler/constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.color, @required this.onPressed, this.title, this.width});

  final Color color;
  final String title;
  final Function onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 26.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width,
          height: 52.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
