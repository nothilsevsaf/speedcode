import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UiApps/LoginSignUpAnimation/Pages/LoginPage.dart';
import 'UiApps/food2RTL/food2RTL.dart';
import 'UiApps/foodApp1/foodApp1.dart';
import 'functions.dart';
import 'UiItems/pageIndecator.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BeforeAll(),
//      new MyHomePage(),
    );
  }
}

class BeforeAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Home();
  }
}

makeListTile(String title, Function doIt) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    onTap: doIt,
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    statusSet(statusBar: Colors.white,
        statusBarIsWhite: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              ExpansionTile(
                title: Text(
                  'Ui Apps',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                children: [
                  makeListTile('FoodApp1', () async {
                    statusSet(statusBar: Colors.transparent,
                        statusBarIsWhite: false);
                    go(context, FoodApp1());
                  }),
                  makeListTile('Food2RTL', () async {
                    await statusSet(statusBar: Colors.transparent,
                        statusBarIsWhite: true);
                    go(context, Food2RTL());
                  }),
                  makeListTile('LoginSignUpAnimation', () async {
                    await statusSet(statusBar: Colors.transparent,
                        statusBarIsWhite: true);
                    go(context, ProviderLogin());
                  }),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Ui Items',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                children: [
                  // makeListTile('GestureDetectorExample', () {
                  //   statusSet(Colors.transparent, false);
                  //   go(context, GestureDetectorExample());
                  // }),
                  makeListTile('PageIndecator', () {
                    statusSet(statusBar: Colors.transparent,
                        statusBarIsWhite: false);
                    go(
                        context,
                        PageIndecator(
                          title: 'PageIndecator',
                        ));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
