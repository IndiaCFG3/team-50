import 'package:flutter/material.dart';
import 'package:assembler/constants.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:assembler/components/rcard.dart';

class ReportScreenI extends StatefulWidget {
  final int x = 5;
  @override
  _ReportScreenIState createState() => _ReportScreenIState();
}

class _ReportScreenIState extends State<ReportScreenI> {
//  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap1 = new Map();
    dataMap1.putIfAbsent("Excellent", () => widget.x.toDouble());
    dataMap1.putIfAbsent("Very Good", () => 3);
    dataMap1.putIfAbsent("Good", () => 2);
    dataMap1.putIfAbsent("Poor", () => 2);
    dataMap1.putIfAbsent("Bad", () => 2);
    Map<String, double> dataMap2 = new Map();
    dataMap2.putIfAbsent("Excellent", () => 1);
    dataMap2.putIfAbsent("Very Good", () => 4);
    dataMap2.putIfAbsent("Good", () => 6);
    dataMap2.putIfAbsent("Poor", () => 8);
    dataMap2.putIfAbsent("Bad", () => 1);
    Map<String, double> dataMap3 = new Map();
    dataMap3.putIfAbsent("Excellent", () => 6);
    dataMap3.putIfAbsent("Very Good", () => 4);
    dataMap3.putIfAbsent("Good", () => 2);
    dataMap3.putIfAbsent("Poor", () => 5);
    dataMap3.putIfAbsent("Bad", () => 1);
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
            height: 40,
            color: kManagerColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Report",
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  ReusableCard(
                    colour: Color(0xffD0D0D0),
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          "Presence of Students",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                        PieChart(dataMap: dataMap1),
                      ],
                    ),
                  ),
                  ReusableCard(
                    colour: Color(0xffD0D0D0),
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          "Confidence of Students",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                        PieChart(dataMap: dataMap2),
                      ],
                    ),
                  ),
                  ReusableCard(
                    colour: Color(0xffD0D0D0),
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          "Initiative taken by Students",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                        PieChart(dataMap: dataMap3),
                      ],
                    ),
                  ),
                  ReusableCard(
                    colour: Color(0xffD0D0D0),
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          "Preparation of Students",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                        PieChart(dataMap: dataMap1),
                      ],
                    ),
                  ),
                  ReusableCard(
                    colour: Color(0xffD0D0D0),
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          "Helping nature of Students",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                        PieChart(dataMap: dataMap1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
