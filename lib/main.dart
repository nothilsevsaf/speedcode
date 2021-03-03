import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food2RTL/food2RTL.dart';
import 'foodApp1/foodApp1.dart';
import 'functions.dart';
import 'page/GestureDetectorExample.dart';
import 'page/pageIndecator.dart';

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
      home: Home(),
//      new MyHomePage(),
    );
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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setStatus(Colors.white, false);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              ExpansionTile(
                title: Text('Ui Apps',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                children: [
                  makeListTile('FoodApp1', () async{
                    setStatus(Colors.transparent, false);
                    go(context, FoodApp1());
                  }),
                  makeListTile('Food2RTL', () async{
                    await setStatus(Colors.transparent, true);
                    go(context, Food2RTL());
                  }),
                ],
              ),

              ExpansionTile(
                title: Text('Ui Items',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                children: [
                  // makeListTile('GestureDetectorExample', () {
                  //   setStatus(Colors.transparent, false);
                  //   go(context, GestureDetectorExample());
                  // }),
                  makeListTile('PageIndecator', () {
                    setStatus(Colors.transparent, false);
                    go(context, PageIndecator(title: 'PageIndecator',));
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

//
//
//
//
//
//
//
//
//
// const String ims = 'assets/images/';
//
// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//           body: SizedBox.expand(
//              child: Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage(ims + 'food1/f59f7de0.jpg'),
//                   fit: BoxFit.fill)),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 Text(
//                   'Hola!\nJohn Doe',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 50),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Best restaurants, offering\ndiscounts on food & drinks.',
//                   style: TextStyle(
//                       color: Colors.white,
// //                      fontWeight: FontWeight.bold,
//                       fontSize: 25),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 RawMaterialButton(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Page2()));
//                   },
//                   fillColor: Color.fromRGBO(228, 40, 61, 1),
// //                    fillColor: Colors.deepOrange,
//                   splashColor: Colors.deepOrange,
//                   shape: StadiumBorder(),
//                   elevation: 0,
//                   child: Padding(
//                     padding:
//                         EdgeInsets.only(left: 23, top: 10, bottom: 10, right: 10),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
// //                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           'Let\'s Go',
//                           style: TextStyle(color: Colors.white, fontSize: 16),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.white,
//                           size: 15,
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       )),
//     );
//   }
// }
//
// class HotDetails {
//   final String image;
//   final String name;
//   final String time;
//   HotDetails(this.image, this.name, this.time);
// }
//
// class SlideDetails {
//   final String back;
//   final String image;
//   final String name;
//   final String desc;
//   final String star;
//   SlideDetails(this.back, this.image, this.name, this.desc, this.star);
// }
//
// class Page2 extends StatelessWidget {
//   int ind = 0;
//
//   List<SlideDetails> slideList = [
//     SlideDetails('food1/wp1874172.jpg', 'food1/organic-restaur.png', 'کافه آذر',
//         'خیابان تجریش ..', '4.8'),
//     SlideDetails('food1/unnamed.jpg', 'food1/organic-restaur.png', 'Cafe Azur',
//         '4315 Montrose boulevard ..', '4.8'),
//     SlideDetails('food1/y4.jpg', 'food1/organic-restaur.png', 'Cafe Azur',
//         '4315 Montrose boulevard ..', '4.8'),
//     SlideDetails('food1/Whats.jpeg', 'food1/organic-restaur.png', 'Cafe Azur',
//         '4315 Montrose boulevard ..', '4.8'),
//   ];
//   List<HotDetails> hotDetails = [
//     HotDetails('food1/spirit-ni.jpg', 'پارک ملت', '1h 12m'),
//     HotDetails('food1/Headwear.jpg', 'پارک ملت', '1h 12m'),
//     HotDetails('food1/129840935-sale.jpg', 'پارک ملت', '1h 12m'),
//     HotDetails('food1/summer.jpg', 'پارک ملت', '1h 12m'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.only(bottom: 0, right: 0, left: 0, top: 27),
//           child: Column(
//             children: <Widget>[
//               SizedBox(
//                 height: 50,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 27, left: 27),
//                 child: SizedBox(
//                   height: 55,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     mainAxisSize: MainAxisSize.max,
//                     children: <Widget>[
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text('با هر سلیقه ای',
//                               style: TextStyle(
//                                   fontSize: 27,
//                                   fontWeight: FontWeight.w700,
//                                   color: Colors.black)),
//                           Row(
//                             children: <Widget>[
//                               Text(
//                                 'تهران ',
//                                 style: TextStyle(
//                                     fontSize: 15,
// //                          fontWeight: FontWeight.w700,
//                                     color: Color.fromRGBO(182, 186, 189, 1)),
//                               ),
//                               Icon(
//                                 Icons.keyboard_arrow_down,
//                                 color: Colors.black,
//                                 size: 23,
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                       Icon(Icons.menu)
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 27,
//               ),
//               SizedBox(
//                 height: 350,
//                 width: double.infinity,
//                 child: Container(
//                   child: Swiper(
//                     onTap: (index) {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => Page3(
//                                     slideList[index].back,
//                                     slideList[index].image,
//                                     slideList[index].name,
//                                     slideList[index].desc,
//                                     slideList[index].star,
//                                   )));
//                     },
//                     scrollDirection: Axis.horizontal,
//                     itemWidth: 270,
//                     layout: SwiperLayout.STACK,
//                     onIndexChanged: (int index) {
//                       ind = index;
//                     },
//                     itemBuilder: (BuildContext context, int index) {
//                       if (ind == index) {
// //                      print('ss');
//                         return Container(
//                           margin: EdgeInsets.only(bottom: 10),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(35),
//                               image: DecorationImage(
//                                   image: AssetImage(ims + slideList[index].back),
//                                   fit: BoxFit.fill)),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 vertical: 20, horizontal: 20),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.end,
// //                            crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: <Widget>[
//                                     CircleAvatar(
//                                       backgroundImage: AssetImage(
//                                           ims + slideList[index].image),
//                                       backgroundColor: Colors.white,
//                                     ),
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         Text(
//                                           slideList[index].name,
//                                           style: TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.w700,
//                                               color: Colors.white),
//                                         ),
//                                         Text(
//                                           slideList[index].desc,
//                                           style: TextStyle(
//                                               fontSize: 10,
// //                          fontWeight: FontWeight.w700,
//                                               color: Color.fromRGBO(
//                                                   182, 186, 189, 1)),
//                                         ),
//                                       ],
//                                     ),
//                                     Card(
//                                       color: Colors.green,
//                                       elevation: 0,
//                                       shape: StadiumBorder(),
//                                       child: Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             vertical: 5, horizontal: 7),
//                                         child: Row(
//                                           mainAxisSize: MainAxisSize.min,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.center,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: <Widget>[
//                                             Icon(
//                                               Icons.star,
//                                               color: Colors.white,
//                                               size: 15,
//                                             ),
//                                             SizedBox(
//                                               width: 3,
//                                             ),
//                                             Text(
//                                               slideList[index].star,
//                                               style:
//                                                   TextStyle(color: Colors.white),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       } else {
//                         return Opacity(
//                           opacity: 0.8,
//                           child: Container(
//                             margin: EdgeInsets.only(bottom: 10),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(35),
//                                 image: DecorationImage(
//                                     image:
//                                         AssetImage(ims + slideList[index].back),
//                                     fit: BoxFit.fill)),
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 20, horizontal: 20),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
// //                            crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: <Widget>[
//                                   Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       CircleAvatar(
//                                         backgroundImage: AssetImage(
//                                             ims + slideList[index].image),
//                                         backgroundColor: Colors.white,
//                                       ),
//                                       Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: <Widget>[
//                                           Text(
//                                             slideList[index].name,
//                                             style: TextStyle(
//                                                 fontSize: 15,
//                                                 fontWeight: FontWeight.w700,
//                                                 color: Colors.white),
//                                           ),
//                                           Text(
//                                             slideList[index].desc,
//                                             style: TextStyle(
//                                                 fontSize: 10,
// //                          fontWeight: FontWeight.w700,
//                                                 color: Color.fromRGBO(
//                                                     182, 186, 189, 1)),
//                                           ),
//                                         ],
//                                       ),
//                                       Card(
//                                         color: Colors.green,
//                                         elevation: 0,
//                                         shape: StadiumBorder(),
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               vertical: 5, horizontal: 7),
//                                           child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.center,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: <Widget>[
//                                               Icon(
//                                                 Icons.star,
//                                                 color: Colors.white,
//                                                 size: 15,
//                                               ),
//                                               SizedBox(
//                                                 width: 3,
//                                               ),
//                                               Text(
//                                                 slideList[index].star,
//                                                 style: TextStyle(
//                                                     color: Colors.white),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                     itemCount: slideList.length,
// //                  pagination: new SwiperPagination(builder: SwiperPagination.dots),
// //              control: new SwiperControl(),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 20, left: 27),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       'پیشنهادات ویژه',
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black),
//                     ),
//                     FlatButton(
//                       onPressed: () {},
//                       child: Text(
//                         'نمایش همه',
//                         style: TextStyle(
//                             fontSize: 15,
// //                          fontWeight: FontWeight.w700,
//                             color: Color.fromRGBO(95, 129, 225, 1)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                   height: 220,
//                   child: ListView.builder(
//                       itemCount: hotDetails.length,
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 15),
//                           child: Container(
//                             width: 150,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: <Widget>[
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                             ims + hotDetails[index].image),
//                                         fit: BoxFit.fill,
//                                       ),
//                                       borderRadius: BorderRadius.circular(10)),
//                                   height: 180,
//                                   width: 150,
//                                 ),
//                                 Text(
//                                   hotDetails[index].name,
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.black),
//                                 ),
//                                 Text(
//                                   hotDetails[index].time,
//                                   style: TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.black45),
//                                 )
//                               ],
//                             ),
//                           ),
//                         );
//                       }))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Page3Scrole {
//   final Color c1;
//   final Color c2;
//   final int persent;
//   final String top;
//   final String mid;
//   final String down;
//   Page3Scrole(this.c1, this.c2, this.persent, this.top, this.mid, this.down);
// }
//
// class Page3 extends StatelessWidget {
// //  final String back = 'food/PageFirst5.jpg';
// //  final String image = 'food/PageFirst2.jpg';
// //  final String name = 'Cafe Azur';
// //  final String desc = '4315 Montrose boulevard ..';
// //  final String star = '4.8';
//   final String back;
//   final String image;
//   final String name;
//   final String desc;
//   final String star;
//   Page3(this.back, this.image, this.name, this.desc, this.star);
//
//   final List<Page3Scrole> _page3Scrole = [
//     Page3Scrole(
//         Color.fromRGBO(68, 138, 202, 1),
//         Color.fromRGBO(42, 102, 176, 1),
//         20,
//         'پولتان را ذخیره کنید',
//         'بازپرداخت',
//         'کاهش هزینه پرداخت\nبا دینا'),
//     Page3Scrole(
//         Color.fromRGBO(134, 112, 201, 1),
//         Color.fromRGBO(79, 47, 176, 1),
//         10,
//         'Save more than 1000',
//         'Cashback',
//         'Pay your bill Dineout Pay and \nget 10% cashback'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//           body: Stack(
//         children: <Widget>[
//           Hero(
//             tag: 'hero3',
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.35,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       fit: BoxFit.fill, image: AssetImage(ims + back))),
//             ),
//           ),
//           SizedBox.expand(
//             child: DraggableScrollableSheet(
//               maxChildSize: 0.7,
//               initialChildSize: 0.7,
//               minChildSize: 0.699999999999,
//               expand: true,
//               builder: (context, scrollController) {
//                 return Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(45),
//                           topRight: Radius.circular(45),
//                           bottomLeft: Radius.zero,
//                           bottomRight: Radius.zero)),
//                   child: SingleChildScrollView(
//                     controller: scrollController,
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           margin: EdgeInsets.only(top: 10, bottom: 10),
//                           child: Center(
//                             child: Container(
//                               width: 70,
//                               height: 5,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Color.fromRGBO(216, 221, 229, 1)),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                                   horizontal: 40, vertical: 10)
//                               .copyWith(top: 5),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Card(
//                                 elevation: 7,
//                                 shape: CircleBorder(),
//                                 child: CircleAvatar(
//                                   radius: 27,
//                                   backgroundImage: AssetImage(ims + image),
//                                   backgroundColor: Colors.transparent,
//                                 ),
//                               ),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   Text(
//                                     name,
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w700,
//                                         color: Colors.black),
//                                   ),
//                                   Text(
//                                     desc,
//                                     style: TextStyle(
//                                         fontSize: 15,
// //                          fontWeight: FontWeight.w700,
//                                         color: Color.fromRGBO(150, 150, 150, 1)),
//                                   ),
//                                 ],
//                               ),
//                               Card(
//                                 color: Colors.green,
//                                 elevation: 0,
//                                 shape: StadiumBorder(),
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 5, horizontal: 7),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: <Widget>[
//                                       Icon(
//                                         Icons.star,
//                                         color: Colors.white,
//                                         size: 15,
//                                       ),
//                                       SizedBox(
//                                         width: 3,
//                                       ),
//                                       Text(
//                                         star,
//                                         style: TextStyle(color: Colors.white),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 2,
//                           color: Color.fromRGBO(229, 229, 229, 1),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 10)
//                               .copyWith(bottom: 5),
//                           child: FlatButton(
//                             padding: EdgeInsets.zero,
//                             color: Color.fromRGBO(250, 229, 229, 1),
//                             highlightColor: Colors.yellow,
//
// //                          focusColor: Color.fromRGBO(250, 229, 229, 1),
// //                          hoverColor: Color.fromRGBO(250, 229, 229, 1),
//                             splashColor: Colors.yellow,
//                             onPressed: () {},
//                             child: Container(
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: <Widget>[
//                                     RichText(
//                                       text: TextSpan(
//                                           style: TextStyle(
//                                               color: Color.fromRGBO(210, 6, 6, 1),
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.w900),
//                                           children: [
//                                             TextSpan(text: ' مشخصات '),
//                                             TextSpan(
//                                                 text: '(منو، آدرس و...)',
//                                                 style: TextStyle(
//                                                     fontSize: 15,
//                                                     fontWeight: FontWeight.w900)),
//
//                                           ]),
//
//                                     ),
//                                     Icon(
//                                       Icons.arrow_forward_ios,
//                                       color: Color.fromRGBO(210, 6, 6, 1),
//                                       size: 22,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20)
//                               .copyWith(bottom: 10),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Text('Gourmet Passport',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 30)),
//                               Text(
//                                   'Lorem Ipsum is simply dummy text of the printing.',
//                                   style: TextStyle(
//                                       color: Color.fromRGBO(150, 150, 150, 1),
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 15)),
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 10),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Colors.yellow,
//                                       borderRadius: BorderRadius.circular(5),
//                                       gradient: LinearGradient(
//                                           begin: Alignment.centerLeft,
//                                           end: Alignment.centerRight,
//                                           colors: [
//                                             Color.fromRGBO(198, 132, 2, 1),
//                                             Color.fromRGBO(232, 187, 36, 1)
//                                           ])),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 15, vertical: 10),
//                                     child: Row(
// //                                    mainAxisAlignment:
// //                                        MainAxisAlignment.spaceBetween,
// //                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: <Widget>[
//                                         Text(
//                                           '1+1',
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 50,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         SizedBox(
//                                           width: 20,
//                                         ),
//                                         Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: <Widget>[
//                                             Text(
//                                               'پی',
//                                               style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontSize: 20,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             SizedBox(
//                                               height: 5,
//                                             ),
//                                             Text(
//                                               'تخفیف می خوای \n' +
//                                                   'کوپن بگیر...',
//                                               style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontSize: 13,
//                                                   fontWeight: FontWeight.w400),
//                                             ),
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 10),
//                                 child: Container(
//                                   decoration: BoxDecoration(
// //                                    color: Colors.yellow,
//                                       borderRadius: BorderRadius.circular(5),
//                                       gradient: LinearGradient(
//                                           begin: Alignment.centerLeft,
//                                           end: Alignment.centerRight,
//                                           colors: [
//                                             Color.fromRGBO(198, 132, 2, 1),
//                                             Color.fromRGBO(232, 187, 36, 1)
//                                           ])),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 15, vertical: 10),
//                                     child: Row(
// //                                    mainAxisAlignment:
// //                                        MainAxisAlignment.spaceBetween,
// //                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: <Widget>[
//                                         Text(
//                                           '1+1',
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 50,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         SizedBox(
//                                           width: 20,
//                                         ),
//                                         Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: <Widget>[
//                                             Text(
//                                               'نوشیدنی ها',
//                                               style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
// //                                            SizedBox(
// //                                              height: 5,
// //                                            ),
//                                             Text(
//                                               'کوپن بگیر \n' +
//                                                   'تخفیف بگیر...',
//                                               style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontSize: 13,
//                                                   fontWeight: FontWeight.w400),
//                                             ),
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: double.infinity,
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 20),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text('پیشنهادات پرداخت',
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 27)),
//                                 Text(
//                                     'لورم اسپم یک متن تست است.',
//                                     style: TextStyle(
//                                         color: Color.fromRGBO(150, 150, 150, 1),
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 15)),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 20),
//                           child: Container(
//                             width: double.infinity,
//                             height: 90,
//                             child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: _page3Scrole.length,
//                               itemBuilder: (context, index) {
//                                 return Container(
//                                   margin: EdgeInsets.only(left: 20),
//                                   child: Card(
//                                     elevation: 10,
//                                     child: Container(
//                                       width: 300,
//                                       height: double.infinity,
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: <Widget>[
//                                           Container(
//                                             height: double.infinity,
//                                             width: 300 * 0.25,
//                                             decoration: BoxDecoration(
// //                                              color: _page3Scrole[index].c1,
//                                                 gradient: LinearGradient(
//                                                     begin: Alignment.topCenter,
//                                                     end: Alignment.bottomCenter,
//                                                     colors: [
//                                                       _page3Scrole[index].c1,
//                                                       _page3Scrole[index].c2
//                                                     ]),
//                                                 borderRadius: BorderRadius.only(
//                                                     topLeft:
//                                                         Radius.circular(100),
//                                                 bottomRight: Radius.zero,
//                                                     topRight: Radius.zero,
//                                                     bottomLeft:
//                                                         Radius.circular(100)
// //                                                    bottomRight:
// //                                                    Radius.circular(100),
// //                                                topLeft: Radius.zero,
// //                                                bottomLeft: Radius.zero,
// //                                                topRight:
// //                                                Radius.circular(100)
//                                                 )),
//                                             child: Center(
//                                               child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       text: _page3Scrole[index]
//                                                           .persent
//                                                           .toString(),
//                                                       style: TextStyle(
//                                                           color: Colors.white,
//                                                           fontWeight:
//                                                               FontWeight.bold,
//                                                           fontSize: 40)),
//                                                   TextSpan(
//                                                       text: '%',
//                                                       style: TextStyle(
//                                                           color: Colors.white,
//                                                           fontSize: 15))
//                                                 ]),
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: 5,
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.all(7),
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: <Widget>[
//                                                 Text(
//                                                   _page3Scrole[index].top,
//                                                   style: TextStyle(
//                                                       color: Color.fromRGBO(
//                                                           8, 215, 103, 1),
//                                                       fontSize: 12),
//                                                 ),
// //                                                SizedBox(height: 2,),
//                                                 Text(
//                                                   _page3Scrole[index].mid,
//                                                   style: TextStyle(
//                                                       color: Colors.black,
//                                                       fontWeight: FontWeight.bold,
//                                                       fontSize: 16),
//                                                 ),
//                                                 Text(
//                                                   _page3Scrole[index].down,
//                                                   style: TextStyle(
//                                                       color: Color.fromRGBO(
//                                                           150, 150, 150, 1),
//                                                       fontSize: 12),
//                                                 ),
//                                               ],
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
