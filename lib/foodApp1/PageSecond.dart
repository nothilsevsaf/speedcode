
import 'package:flutter/material.dart';
import 'dataTypes.dart';

class PageSecond extends StatelessWidget {
  PageController _pageController = new PageController();
  List<PageSecondData> slideList = [
    PageSecondData(AssetImage(ims + 'food/chineese.png'), 'The Tang NYC',
        'Asian, Noodles', 4.9, 284, '15-25 mins', '\$20'),
    PageSecondData(AssetImage(ims + 'food/chineese.png'), 'Nickel & Dinner1',
        'American (Traditional), Breakfast1', 3.9, 384, '10-20 mins', '50,20')
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        itemCount: slideList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5,
                        spreadRadius: -2,
                        offset: Offset(0, 5))
                  ]),
              width: double.infinity,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              slideList[index].name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              slideList[index].desc,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontSize: 15),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Image(
                            image: slideList[index].image,
                            height: 45,
                            width: 45,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 0.5,
                      child: Container(
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color.fromRGBO(255, 221, 0, 1),
                        ),
//                        Image.asset(ims+'food/star.png',width: 20,height: 20,),
                        Text(slideList[index].star.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                        Text(
                          ' (${slideList[index].count})   ',
                          style: TextStyle(
                              color: Color.fromRGBO(150, 150, 150, 1)),
                        ),
                        Icon(
                          Icons.timer,
                          size: 20,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                        Text(' ${slideList[index].time}    ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                        Icon(
                          Icons.monetization_on,
                          size: 20,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                        Text('   ${slideList[index].price}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
