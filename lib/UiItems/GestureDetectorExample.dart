import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class GestureDetectorExample extends StatefulWidget {
  @override
  _GestureDetectorExampleState createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  Color postitiveColor = new Color(0xFFEF0078);
  Color negetiveColor = new Color(0xFFFFFFFF);
  double percentage = 0.0;
  double initial = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'CUSTOM SLIDER',
          style: TextStyle(color: postitiveColor),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              percentage.round().toString() + ' %',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 70, color: postitiveColor),
            ),
            GestureDetector(
              onPanStart: (DragStartDetails details) {
                initial = details.globalPosition.dx;
              },
              onPanUpdate: (DragUpdateDetails details) {
                double distance = details.globalPosition.dx - initial;
                double percentageAddition = distance / 200;
                setState(() {
                  percentage = (percentage + percentageAddition).clamp(0, 100);
                });
              },
              onPanEnd: (DragEndDetails details) {
                initial = 0;
              },
              child: CustomSlider(
                percentage: this.percentage,
                postitiveColor: postitiveColor,
                negetiveColor: negetiveColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomSlider extends StatelessWidget {
  double totalWidth = 200;
  double percentage;
  Color postitiveColor;
  Color negetiveColor;
  CustomSlider({this.percentage, this.postitiveColor, this.negetiveColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: totalWidth + 4,
      height: 30,
      decoration: BoxDecoration(
          color: negetiveColor,
          border: Border.all(color: Colors.black, width: 2)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            color: postitiveColor,
            width: (percentage / 100) * totalWidth,
          )
        ],
      ),
    );
  }
}
