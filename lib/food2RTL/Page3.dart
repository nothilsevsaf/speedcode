import 'dart:ui';

import 'package:flutter/material.dart';
import '../functions.dart';
import 'dataTypes.dart';
class Page3 extends StatelessWidget {
  final String back;
  final String image;
  final String name;
  final String desc;
  final String star;
  Page3(this.back, this.image, this.name, this.desc, this.star);

  final List<Page3Scrole> _page3Scrole = [
    Page3Scrole(
        Color.fromRGBO(68, 138, 202, 1),
        Color.fromRGBO(42, 102, 176, 1),
        20,
        'پولتان را ذخیره کنید',
        'بازپرداخت',
        'کاهش هزینه پرداختی ها دینا'),
    Page3Scrole(
        Color.fromRGBO(134, 112, 201, 1),
        Color.fromRGBO(79, 47, 176, 1),
        10,
        'Save more than 1000',
        'Cashback',
        'Pay your bill Dineout Pay and \nget 10% cashback'),
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: WillPopScope(
        onWillPop: ()async{
          await setStatus(Colors.transparent, false);
          return true;
        },
        child: Scaffold(
            body: Stack(
              children: <Widget>[
                Hero(
                  tag: 'hero3',
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage(ims + back))),
                  ),
                ),
                SizedBox.expand(
                  child: DraggableScrollableSheet(
                    maxChildSize: 0.7,
                    initialChildSize: 0.7,
                    minChildSize: 0.699999999999,
                    expand: true,
                    builder: (context, scrollController) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45),
                                topRight: Radius.circular(45),
                                bottomLeft: Radius.zero,
                                bottomRight: Radius.zero)),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          controller: scrollController,
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Center(
                                  child: Container(
                                    width: 70,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromRGBO(216, 221, 229, 1)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10)
                                    .copyWith(top: 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Card(
                                      elevation: 7,
                                      shape: CircleBorder(),
                                      child: CircleAvatar(
                                        radius: 27,
                                        backgroundImage: AssetImage(ims + image),
                                        backgroundColor: Colors.transparent,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          name,
                                          style: TextStyle(height: 1,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          desc,
                                          style: TextStyle(height: 1,
                                              fontSize: 15,
//                          fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(150, 150, 150, 1)),
                                        ),
                                      ],
                                    ),
                                    Card(
                                      color: Colors.green,
                                      elevation: 0,
                                      shape: StadiumBorder(),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 7),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              star,
                                              style: TextStyle(height: 1,color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 2,
                                color: Color.fromRGBO(229, 229, 229, 1),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10)
                                    .copyWith(bottom: 5),
                                child: FlatButton(
                                  padding: EdgeInsets.zero,
                                  color: Color.fromRGBO(250, 229, 229, 1),
                                  highlightColor: Colors.yellow,

//                          focusColor: Color.fromRGBO(250, 229, 229, 1),
//                          hoverColor: Color.fromRGBO(250, 229, 229, 1),
                                  splashColor: Colors.yellow,
                                  onPressed: () {},
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          RichText(
                                            text: TextSpan(
                                                style: TextStyle(height: 1,
                                                    color: Color.fromRGBO(210, 6, 6, 1),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w900),
                                                children: [
                                                  TextSpan(text: ' مشخصات '),
                                                  TextSpan(
                                                      text: '(منو، آدرس و...)',
                                                      style: TextStyle(height: 1,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w900)),

                                                ]),

                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromRGBO(210, 6, 6, 1),
                                            size: 22,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20)
                                    .copyWith(bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('خوشمزه',
                                        style: TextStyle(height: 1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30)),
                                    Text(
                                        'لورم اسپم یک متن تست است.',
                                        style: TextStyle(height: 1,
                                            color: Color.fromRGBO(150, 150, 150, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(5),
                                            gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color.fromRGBO(198, 132, 2, 1),
                                                  Color.fromRGBO(232, 187, 36, 1)
                                                ])),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Row(
//                                    mainAxisAlignment:
//                                        MainAxisAlignment.spaceBetween,
//                                    crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                '1+1',
                                                style: TextStyle(height: 1,
                                                    color: Colors.white,
                                                    fontSize: 50,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    'پیشنهاد اصلی',
                                                    style: TextStyle(height: 1,
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'تخفیف می خوای \n' +
                                                        'کوپن بگیر...',
                                                    style: TextStyle(height: 1,
                                                        color: Colors.white,
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
//                                    color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(5),
                                            gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color.fromRGBO(198, 132, 2, 1),
                                                  Color.fromRGBO(232, 187, 36, 1)
                                                ])),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Row(
//                                    mainAxisAlignment:
//                                        MainAxisAlignment.spaceBetween,
//                                    crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                '1+1',
                                                style: TextStyle(height: 1,
                                                    color: Colors.white,
                                                    fontSize: 50,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    'نوشیدنی ها',
                                                    style: TextStyle(height: 1,
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'کوپن بگیر \n' +
                                                        'تخفیف بگیر...',
                                                    style: TextStyle(height: 1,
                                                        color: Colors.white,
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('پیشنهادات پرداخت',
                                          style: TextStyle(height: 1,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 27)),
                                      Text(
                                          'لورم اسپم یک متن تست است.',
                                          style: TextStyle(height: 1,
                                              color: Color.fromRGBO(150, 150, 150, 1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15)),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  width: double.infinity,
                                  height: 90,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _page3Scrole.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Card(
                                          elevation: 10,
                                          child: Container(
                                            width: 300,
                                            height: double.infinity,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: <Widget>[
                                                Container(
                                                  height: double.infinity,
                                                  width: 300 * 0.25,
                                                  decoration: BoxDecoration(
//                                              color: _page3Scrole[index].c1,
                                                      gradient: LinearGradient(
                                                          begin: Alignment.topCenter,
                                                          end: Alignment.bottomCenter,
                                                          colors: [
                                                            _page3Scrole[index].c1,
                                                            _page3Scrole[index].c2
                                                          ]),
                                                      borderRadius: BorderRadius.only(
                                                          topLeft:
                                                          Radius.circular(100),
                                                          bottomRight: Radius.zero,
                                                          topRight: Radius.zero,
                                                          bottomLeft:
                                                          Radius.circular(100)
//                                                    bottomRight:
//                                                    Radius.circular(100),
//                                                topLeft: Radius.zero,
//                                                bottomLeft: Radius.zero,
//                                                topRight:
//                                                Radius.circular(100)
                                                      )),
                                                  child: Center(
                                                    child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: _page3Scrole[index]
                                                                .persent
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 40)),
                                                        TextSpan(
                                                            text: '%',
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 15))
                                                      ]),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(7),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text(
                                                        _page3Scrole[index].top,
                                                        style: TextStyle(height: 1,
                                                            color: Color.fromRGBO(
                                                                8, 215, 103, 1),
                                                            fontSize: 16),
                                                      ),
                                                      SizedBox(height: 4,),
                                                      Text(
                                                        _page3Scrole[index].mid,
                                                        style: TextStyle(height: 1,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      SizedBox(height: 4,),
                                                      Text(
                                                        _page3Scrole[index].down,
                                                        style: TextStyle(height: 1,
                                                            color: Color.fromRGBO(
                                                                150, 150, 150, 1),
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}