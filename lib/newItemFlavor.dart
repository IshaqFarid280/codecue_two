import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:codecue_two/constructorClass.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MaterialApp(
    home: newItemFlavor(),
  ));
  }

class newItemFlavor extends StatefulWidget {
  @override
  State<newItemFlavor> createState() => _newItemFlavorState();
}

class _newItemFlavorState extends State<newItemFlavor> {
  int activeindex = 0;
  int index = -1;
  constructor construct = constructor();
  final CarouselController _controller = CarouselController();
  final List<String> imageurl = [
    'images/cocoCola.png',
    'images/cocoCola.png',
    'images/cocoCola.png',
    'images/cocoCola.png',
  ];
  Color _iconColor = Colors.white;
  bool alreadySaved = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
           },
          child: Icon(Icons.keyboard_backspace,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search_outlined,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlayInterval: Duration(seconds: 5),

                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlay: true,
                onPageChanged: (index, reason) =>
                    setState(() => activeindex = index),

              ),
              items: imageurl.map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(e,
                    width: 50,
                        height: 350,
                        fit: BoxFit.cover,)
                  ],
                ),
              )).toList(),
            ),
            SizedBox(height: 25),
            buildIndicator(),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.black,
                      fontFamily: "Segoe UI",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(width: 2, color: Colors.black12)),
                    child: IconButton(
                      iconSize: 30,

                      onPressed: () {
                        setState(() {
                          if(_iconColor == Colors.white60){
                            _iconColor = Colors.red;
                          }else{
                            _iconColor = Colors.white60;
                          }
                        });
                        },
                      icon: Icon(
                          Icons.favorite,
                          color: _iconColor),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 68,
                    height: 40,
                    child: Text('Strawberry 100 G',
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      color: Colors.black
                    ),),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('In Stock',
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontSize: 22,
                      color: Color(0xff3DBCA7),

                    ),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15.0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('RS 34.00',
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    color: Color(0xff3DBCA7),
                    fontSize: 22,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Text('4.5',
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                      color: Colors.black,

                    ),),
                  )
                ],
              ),
            ),
            Padding (
              padding: const EdgeInsets.only(top: 5, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xffF3F3F3),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0),
                                blurRadius: 3.0
                              )
                            ]
                          ),
                          child: Icon(Icons.add, size: 25,),
                          height: 40,
                            width: 40,

                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xff29AAE3),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blueAccent,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 3.0
                                )
                              ]
                          ),
                          height: 40,
                          width: 40,

                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color(0xffF3F3F3),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 3.0
                                )
                              ]
                          ),
                          child: Icon(Icons.remove, size: 25),
                          height: 40,
                          width: 40,

                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      RatingBar.builder(
                        itemSize: 20,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                          },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text('443 Reviews',
                        style: TextStyle(
                          fontSize: 14
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
              child: Divider(
                thickness: 2,
                color: Colors.black38,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5),
                child: Text('Expiry Date: 31 December 2020',
                style: TextStyle(
                  color: Color(0xff707070),


                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15 ),
              child: Divider(
                color: Colors.black38,
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0, right: 15, top: 10, bottom: 10),
              child: ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.all(10),
                expansionCallback: (i, isOpen) {
                  setState(() {
                    if(index == i){
                      index = -1;
                    }
                    else{
                      index = i;
                    }
                  });
                },
                animationDuration: Duration(seconds: 1),
                dividerColor: Colors.grey,
                elevation: 2,
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext, bool isExpnaded){
                      return ListTile(
                        title: Text('Flavor'),
                        trailing: Text(''),
                      );
                    },
                    canTapOnHeader: true,
                    body: Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),

                      height: 75,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            construct.fruittext('images/Icon awesome-apple-alt.png', 'Apple'),
                            construct.fruittext('images/strawberry.png', 'Strawberry'),
                            construct.fruittext('images/nutrition.png', 'Banana'),
                            construct.fruittext('images/Icon awesome-apple-alt.png', 'Apple'),
                            construct.fruittext('images/strawberry.png', 'Strawberry'),
                            construct.fruittext('images/nutrition.png', 'Banana'),
                          ],
                        ),
                      ),
                    ),
                    isExpanded: index == 0,
                  ),
                  ExpansionPanel(
                    headerBuilder: (BuildContext, bool isExpnaded){
                      return ListTile(
                        title: Text('Net Weight'),
                      );
                    },
                    canTapOnHeader: true,
                    body: Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),

                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            construct.netWEIGHT( '50G'),
                            construct.netWEIGHT( '100G'),
                            construct.netWEIGHT( '150G'),
                            construct.netWEIGHT( '200G'),
                            construct.netWEIGHT( '250G'),
                            construct.netWEIGHT( '300G'),
                            construct.netWEIGHT( '50G'),
                          ],
                        ),
                      ),
                    ),
                    isExpanded: index == 1,
                  ),
                  ExpansionPanel(
                    headerBuilder: (BuildContext, bool isExpnaded){
                      return ListTile(
                        title: Text('Description'),
                      );
                    },
                    canTapOnHeader: true,
                    body: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 10, bottom: 15),
                      child: ReadMoreText(
                        'Lorem ipsum dolor sit amet, consetetur sadipscing  elitr, sed diam nonumy eirmod tempor invidunt ut  labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo',
                        style: TextStyle(
                          color: Colors.black
                        ),
                        trimLines: 3,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                          color: Color(0xff29ABE2),
                          fontSize: 17,
                          fontWeight: FontWeight.w600
                        ),
                        lessStyle: TextStyle(
                            color: Color(0xff29ABE2),
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                        ),
                          ),
                    ),
                    isExpanded: index == 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0, left: 10, right: 15),
              child: Card(
                elevation: 2,
                child: ListTile(
                  title: Text('Reviews'),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0, left: 10, right: 15),
              child: Card(
                elevation: 2,
                child: ListTile(
                  title: Text('Q & A'),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeindex,

    count: imageurl.length,
    effect: JumpingDotEffect(
      activeDotColor: Color(0xff29ABE2),
      dotWidth: 8,
      dotHeight: 8
    ),

  );
}

