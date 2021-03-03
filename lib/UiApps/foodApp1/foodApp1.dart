
import 'package:flutter/material.dart';

import 'PageFirst.dart';
import 'PageSecond.dart';
import 'dataTypes.dart';




// ignore: must_be_immutable
class FoodApp1 extends StatelessWidget {
  List<CateguryData> categurys = [
    CateguryData(ims + 'food/chicken_leg.png', 'Americans'),
    CateguryData(ims + 'food/assian.png', 'Asian'),
    CateguryData(ims + 'food/breakfast.png', 'Breakfast'),
    CateguryData(ims + 'food/burger.png', 'Burgers'),
    CateguryData(ims + 'food/coffee_cup.png', 'Cafe'),
  ];

  @override
  Widget build(BuildContext context) {
    pageWidth  = MediaQuery.of(context).size.width;
    pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            color: Color.fromRGBO(248, 247, 247, 1),
          ),
          Container(
            child: SizedBox(
              width: double.infinity,
              height: pageHeight * 0.2,
              child: Container(color: Color.fromRGBO(255, 221, 0, 1)),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Transform.rotate(
              angle: 18,
              child: SizedBox(
                width: pageHeight * 0.43,
                height: pageHeight * 0.43,
                child: Container(
                  color: Color.fromRGBO(255, 221, 0, 1),
                ),
              ),
            ),
          ),
          SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Delivery address',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(color: Color.fromRGBO(0, 0, 0, 0.4)),
                          ),
                          Text(
                            'Bielawska 12',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 25),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.search),
                                iconSize: 23,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            elevation: 10,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.account_circle),
                                iconSize: 23,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: Container(
                    child: PageFirst(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 135,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: categurys.length,
                        itemBuilder: (context, int index) {
                          return Container(
                            margin: EdgeInsets.only(
                                left: 5, right: 5, top: 15, bottom: 10),
                            child: Column(
                              children: <Widget>[
                                Card(
                                  elevation: 5,
                                  shape: CircleBorder(),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 35,
                                    child: Image.asset(
                                      categurys[index].icon,
                                      width: 32,
                                      height: 32,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  categurys[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 0.5,
                    child: Container(
                      color: Colors.black38,
                      margin: EdgeInsets.only(right: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('All restaurants',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Sorted By Fastest Delivery',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                  fontSize: 15,
                                  color: Color.fromRGBO(0, 0, 0, 0.4)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                            Border.all(width: 0.5, color: Colors.black38)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Icon(Icons.settings),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 5, left: 20),
                  child: SizedBox(
                    height: 115,
                    width: double.infinity,
                    child: Container(
                      child: PageSecond(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



