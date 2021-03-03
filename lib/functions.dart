



import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

go(BuildContext context,Widget page){
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => page))
      .catchError((e) => print('Error 1 $e'));
}
setStatus(Color color,bool isWhite)async{
  await FlutterStatusbarcolor.setStatusBarColor(color,
      animate: true);
  FlutterStatusbarcolor.setStatusBarWhiteForeground(isWhite);
}