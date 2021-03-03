import 'dart:ui';

import 'package:flutter/material.dart';
import '../functions.dart';
import 'dataTypes.dart';
import 'Page2.dart';


class Food2RTL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: WillPopScope(
        onWillPop: ()async{
          await setStatus(Colors.white, false);
          return true;
        },
        child: Scaffold(
            body: SizedBox.expand(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ims + 'food1/f59f7de0.jpg'),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'سلام!\nبه دینا خوش آمدید',
                        style: TextStyle(height: 1,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 50),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        'بهترین رستوران ها و تخفیفات\nبرای غذا ها و نوشیدنی ها.',
                        style: TextStyle(height: 1,
                            color: Colors.white,
//                      fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(height: 7,),
                      RawMaterialButton(
                        onPressed: () {
                          setStatus(Colors.transparent,false);
                          go(context, Page2());
                        },
                        fillColor: Color.fromRGBO(228, 40, 61, 1),
//                    fillColor: Colors.deepOrange,
                        splashColor: Colors.deepOrange,
                        shape: StadiumBorder(),
                        elevation: 0,
                        child: Padding(
                          padding:
                          EdgeInsets.only(right: 23, top: 10, bottom: 10, left: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'بزن بریم',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}



