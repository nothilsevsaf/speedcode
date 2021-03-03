
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../functions.dart';
import 'Page3.dart';
import 'dataTypes.dart';

class Page2 extends StatelessWidget {
  int ind = 0;

  List<SlideDetails> slideList = [
    SlideDetails('food1/wp1874172.jpg', 'food1/organic-restaur.png', 'کافه آذر',
        'خیابان تجریش ..', '4.8'),
    SlideDetails('food1/unnamed.jpg', 'food1/organic-restaur.png', 'Cafe Azur',
        '4315 Montrose boulevard ..', '4.8'),
    SlideDetails('food1/y4.jpg', 'food1/organic-restaur.png', 'Cafe Azur',
        '4315 Montrose boulevard ..', '4.8'),
    SlideDetails('food1/Whats.jpeg', 'food1/organic-restaur.png', 'Cafe Azur',
        '4315 Montrose boulevard ..', '4.8'),
  ];
  List<HotDetails> hotDetails = [
    HotDetails('food1/spirit-ni.jpg', 'پارک ملت', '1h 12m'),
    HotDetails('food1/Headwear.jpg', 'پارک ملت', '1h 12m'),
    HotDetails('food1/129840935-sale.jpg', 'پارک ملت', '1h 12m'),
    HotDetails('food1/summer.jpg', 'پارک ملت', '1h 12m'),
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: WillPopScope(
        onWillPop: ()async{
          await setStatus(Colors.transparent, true);
          return true;
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(bottom: 0, right: 0, left: 0, top: 27),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 27, left: 27),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('با هر سلیقه ای',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
                            Row(
                              children: <Widget>[
                                Text(
                                  'تهران ',
                                  style: TextStyle(
                                      fontSize: 15,
//                          fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(182, 186, 189, 1)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 23,
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.menu)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: Container(
                    child: Swiper(
                      onTap: (index) {
                        setStatus(Colors.transparent,true);
                        go(context, Page3(
                          slideList[index].back,
                          slideList[index].image,
                          slideList[index].name,
                          slideList[index].desc,
                          slideList[index].star,
                        ));
                      },
                      scrollDirection: Axis.horizontal,
                      itemWidth: 270,
                      layout: SwiperLayout.STACK,
                      onIndexChanged: (int index) {
                        ind = index;
                      },
                      itemBuilder: (BuildContext context, int index) {
                        if (ind == index) {
//                      print('ss');
                          return Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                    image: AssetImage(ims + slideList[index].back),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
//                            crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            ims + slideList[index].image),
                                        backgroundColor: Colors.white,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            slideList[index].name,
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            slideList[index].desc,
                                            style: TextStyle(
                                                fontSize: 12,
//                          fontWeight: FontWeight.w700,
                                                color: Colors.white),
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                                slideList[index].star,
                                                style:
                                                TextStyle(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Opacity(
                            opacity: 0.8,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  image: DecorationImage(
                                      image:
                                      AssetImage(ims + slideList[index].back),
                                      fit: BoxFit.fill)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
//                            crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              ims + slideList[index].image),
                                          backgroundColor: Colors.white,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              slideList[index].name,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              slideList[index].desc,
                                              style: TextStyle(
                                                  fontSize: 10,
//                          fontWeight: FontWeight.w700,
                                                  color: Color.fromRGBO(
                                                      182, 186, 189, 1)),
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
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                  slideList[index].star,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                      },
                      itemCount: slideList.length,
//                  pagination: new SwiperPagination(builder: SwiperPagination.dots),
//              control: new SwiperControl(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 27),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'پیشنهادات ویژه',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'نمایش همه',
                          style: TextStyle(
                              fontSize: 15,
//                          fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(95, 129, 225, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 220,
                    child: ListView.builder(
                        itemCount: hotDetails.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              ims + hotDetails[index].image),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.circular(10)),
                                    height: 180,
                                    width: 150,
                                  ),
                                  Text(
                                    hotDetails[index].name,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    hotDetails[index].time,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black45),
                                  )
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}