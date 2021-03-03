



import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';


Size size;
double hidd(double v, {double w: 0}) {
  if (w == 0) w = size.height;
  double m = (w * v) / 100;
  return m;
}

double widd(double v, {double w: 0}) {
  if (w == 0) w = size.width;
  double m = (w * v) / 100;
  return m;
}

go(BuildContext context,Widget page){
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => page))
      .catchError((e) => print('Error 1 $e'));
}

statusSet({
  Color statusBar = Colors.transparent,
  Color navigationBar = Colors.white,
  bool statusBarIsWhite=false,
  bool navigationBarIsWhite=false,
}) async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(statusBar, animate: true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(statusBarIsWhite);
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(navigationBarIsWhite);
    await FlutterStatusbarcolor.setNavigationBarColor(navigationBar,
        animate: true);
  } catch (e) {
    print(e.toString());
  }
}

//for navigate between screens
abstract class Go   {
  static void custom(BuildContext context, Widget page,
      {bool full: false, Cubic first = const Cubic(0.175, 0.885, 0.32, 1.1), Cubic second = Curves.easeOutCirc}) {
    Navigator.push(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 500),
            fullscreenDialog: false,
            pageBuilder: (context, Animation<double> animation,
                Animation<double> secondAnimation) {
              return page;
            },
            transitionsBuilder: (context, Animation<double> animation,
                Animation<double> secondAnimation, Widget widget) {
              return FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0)
                    .animate(CurvedAnimation(
                    curve: Curves.linear, //Curves.easeOutBack
                    parent: animation,
                    reverseCurve: Curves.linear)),
                child: widget,
              );
            })).catchError((e) => print('Error $e'));
  }

  static void pushAndRemoveSlideAnim(BuildContext context, Widget page,
      {bool full: false, var first, var second}) {
    if (first == null) first = Cubic(0.175, 0.885, 0.32, 1.1);
    if (second == null) second = Curves.easeOutCirc;
    Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            fullscreenDialog: full,
            pageBuilder: (context, Animation<double> animation,
                Animation<double> secendAnimation) {
              return page;
            },
            transitionsBuilder: (context, Animation<double> animation,
                Animation<double> secendAnimation, Widget widget) {
              return SlideTransition(
                position: Tween(begin: Offset(1, 0), end: Offset(0, 0))
                    .animate(CurvedAnimation(
                    curve: first, //Curves.easeOutBack
                    parent: animation,
                    reverseCurve: second)),
                child: widget,
              );
            }),
            (route) => false).catchError((e) => print('Error 1 $e'));
  }

  static void pushSlideAnim(BuildContext context, Widget page,
      {bool full: false, var first, var second}) {
    if (first == null) first = Cubic(0.175, 0.885, 0.32, 1.1);
    if (second == null) second = Curves.easeOutCirc;
    Navigator.push(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            fullscreenDialog: full,
            pageBuilder: (context, Animation<double> animation,
                Animation<double> secendAnimation) {
              return page;
            },
            transitionsBuilder: (context, Animation<double> animation,
                Animation<double> secendAnimation, Widget widget) {
              return SlideTransition(
                position: Tween(begin: Offset(1, 0), end: Offset(0, 0))
                    .animate(CurvedAnimation(
                    curve: first, //Curves.easeOutBack
                    parent: animation,
                    reverseCurve: second)),
                child: widget,
              );
            })).catchError((e) => print('Error 1 $e'));
  }

  static void pushSlideAnimSheet(BuildContext context, Widget page,
      {bool full: false, var first, var second}) {
    if (first == null) first = Cubic(0.175, 0.885, 0.32, 1.1);
    if (second == null) second = Curves.easeOutCirc;
    Navigator.push(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            fullscreenDialog: false,
            pageBuilder: (context, Animation<double> animation,
                Animation<double> secendAnimation) {
              return page;
            },
            transitionsBuilder: (context, Animation<double> animation,
                Animation<double> secendAnimation, Widget widget) {
              return SlideTransition(
                position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                    .animate(CurvedAnimation(
                    curve: first, //Curves.easeOutBack
                    parent: animation,
                    reverseCurve: second)),
                child: widget,
              );
            })).catchError((e) => print('Error 1 $e'));
  }

  static void replaceSlideAnim(BuildContext context, Widget page,
      {bool full: false, var first, var second}) {
    if (first == null) first = Cubic(0.175, 0.885, 0.32, 1.1);
    if (second == null) second = Curves.easeOutCirc;
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            fullscreenDialog: full,
            pageBuilder: (context, Animation<double> animation,
                Animation<double> secendAnimation) {
              return page;
            },
            transitionsBuilder: (context, Animation<double> animation,
                Animation<double> secendAnimation, Widget widget) {
              return SlideTransition(
                position: Tween(begin: Offset(1, 0), end: Offset(0, 0))
                    .animate(CurvedAnimation(
                    curve: first, //Curves.easeOutBack
                    parent: animation,
                    reverseCurve: second)),
                child: widget,
              );
            })).catchError((e) => print('Error 1 $e'));
  }

  static void push(BuildContext context, Widget page, {bool full: false}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => page, fullscreenDialog: full))
        .catchError((e) => print('Error 1 $e'));
  }

  static void pushHero(BuildContext context, Widget page, Duration dur,
      {bool full: false}) {
    Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: dur,
          pageBuilder: (_, __, ___) => page,
          fullscreenDialog: full,
        ));
  }

  static void replace(BuildContext context, Widget newPage,
      {bool full: false}) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => newPage, fullscreenDialog: full))
        .catchError((e) => print('Error 2 $e'));
  }

  static void replaceHero(BuildContext context, Widget newPage, Duration dur,
      {bool full: false}) {
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
            transitionDuration: dur,
            pageBuilder: (_, __, ___) => newPage,
            fullscreenDialog: full));
  }

  static void pop(BuildContext context, dynamic data) {
    Navigator.pop(context, data);
  }

  static bool canPop(BuildContext context) {
    return Navigator.canPop(context);
  }

  static Future popAndPushNamed_(BuildContext context, Widget page,
      {bool full: false}) {
    return Navigator.popAndPushNamed(context, '');
  }

  static void removeRoute(BuildContext context, Widget page) {
    Navigator.removeRoute(
        context, MaterialPageRoute(builder: (context) => page));
  }

  static void removeRouteBelow(BuildContext context, Widget page) {
    Navigator.removeRouteBelow(
        context, MaterialPageRoute(builder: (context) => page));
  }

  static void replaceRouteBelow(
      BuildContext context, Widget oldPage, Widget newPage) {
    Navigator.replaceRouteBelow(context,
        anchorRoute: MaterialPageRoute(builder: (context) => oldPage),
        newRoute: MaterialPageRoute(builder: (context) => newPage));
  }

  static void pushAndRemove(BuildContext context, Widget page) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page), (route) => false);
  }

}