
import 'package:flutter/material.dart';
import 'dataTypes.dart';

class PageFirst extends StatefulWidget {
  @override
  _PageFirstState createState() => _PageFirstState();
}

class _PageFirstState extends State<PageFirst> {
  PageController _pageController;
  int current = 0;
  List<PageFirstData> slideList = [
    PageFirstData(
        true,
        AssetImage(ims + 'food/PageFirst5.jpg'),
        'Nickel & Dinner',
        'American (Traditional), Breakfast',
        4.9,
        284,
        '15-25 mins',
        'Free'),
    PageFirstData(
        false,
        AssetImage(ims + 'food/PageFirst1.jpg'),
        'Nickel & Dinner1',
        'American (Traditional), Breakfast1',
        3.9,
        384,
        '10-20 mins',
        '50,20'),
    PageFirstData(
        false,
        AssetImage(ims + 'food/PageFirst2.jpg'),
        'Nickel & Dinner',
        'American (Traditional), Breakfast',
        4.9,
        284,
        '15-25 mins',
        'Free'),
    PageFirstData(
        false,
        AssetImage(ims + 'food/PageFirst3.jpg'),
        'Nickel & Dinner1',
        'American (Traditional), Breakfast1',
        3.9,
        384,
        '10-20 mins',
        '50,20'),
    PageFirstData(
        false,
        AssetImage(ims + 'food/PageFirst4.jpg'),
        'Nickel & Dinner1',
        'American (Traditional), Breakfast1',
        3.9,
        384,
        '10-20 mins',
        '50,20'),
    PageFirstData(
        false,
        AssetImage(ims + 'food/PageFirst6.jpg'),
        'Nickel & Dinner1',
        'American (Traditional), Breakfast1',
        3.9,
        384,
        '10-20 mins',
        '50,20'),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(viewportFraction: 0.9);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 330,
          child: PageView.builder(
              onPageChanged: (int value) {
                setState(() {
                  current = value;
                });
              },
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              itemCount: slideList.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: slideList[index].image,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.topRight,

                              child: GestureDetector(
                                onTap: (){
                                  List<PageFirstData> tt = slideList;

                                  PageFirstData t = tt[index];
                                  PageFirstData temp = PageFirstData(
                                      !t.like,
                                      t.image,
                                      t.name,
                                      t.desc,
                                      t.star,
                                      t.count,
                                      t.time,
                                      t.price
                                  );
                                  tt[index] = temp;
                                  setState(() {
                                    slideList=tt;
                                  });
                                },
                                child: slideList[index].like==true
                                    ?Image.asset(ims+'food/heart.png',width: 30,height: 30,)
                                    :Image.asset(ims+'food/hearti.png',width: 30,height: 30,),
                              )
//                            child: IconButton(
//                              iconSize: 30,
//                              color: slideList[index].like == true
//                                  ? Colors.red
//                                  : Colors.white,
//                              onPressed: () {
//                                List<PageFirstData> tt = slideList;
//
//                                PageFirstData t = tt[index];
//                                PageFirstData temp = PageFirstData(
//                                    !t.like,
//                                    t.image,
//                                    t.name,
//                                    t.desc,
//                                    t.star,
//                                    t.count,
//                                    t.time,
//                                    t.price);
//                                tt[index] = temp;
//                                setState(() {
//                                  slideList = tt;
//                                });
//                              },
//                              icon: Icon(
//                                Icons.favorite,
//                              ),
//                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: double.infinity,
                              height: 115,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20, top: 20, bottom: 5, right: 20),
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        slideList[index].name,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        slideList[index].desc,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.4),
                                            fontSize: 15),
                                      ),
                                    ),
                                    SizedBox(height: 8),
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
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 20,
                                          color: Color.fromRGBO(255, 221, 0, 1),
                                        ),
                                        Text(slideList[index].star.toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600)),
                                        Text(
                                          ' (${slideList[index].count})   ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  150, 150, 150, 1)),
                                        ),
                                        Icon(
                                          Icons.timer,
                                          size: 20,
                                          color:
                                          Color.fromRGBO(204, 204, 204, 1),
                                        ),
                                        Text(' ${slideList[index].time}  ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600)),
                                        Icon(
                                          Icons.monetization_on,
                                          size: 20,
                                          color:
                                          Color.fromRGBO(204, 204, 204, 1),
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
                          ),
                        ],
                      ),
                    ));
              }),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 15,
          width: double.infinity,
          child: Center(
            child: SizedBox(
              width: 15 * double.parse(slideList.length.toString()),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (current == index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 4,
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(209, 208, 208, 1),
                        radius: 3,
                      ),
                    );
                  }
                },
                itemCount: slideList.length,
              ),
            ),
          ),
        )
      ],
    );
  }
}
