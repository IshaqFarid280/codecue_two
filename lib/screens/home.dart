import 'package:codecue_two/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:codecue_two/screens/orders.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:codecue_two/screens/profile.dart';
import 'package:codecue_two/screens/wishlist.dart';
import 'package:codecue_two/constructorClass.dart';
import 'package:codecue_two/newItemFlavor.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int activeindex = 0;

  bool alreadySaved = true;
  final List<String> imageurl = [
    'images/cocoCola.png',
    'images/cocoCola.png',
    'images/cocoCola.png',
    'images/cocoCola.png',
  ];
  int index = -1;
  constructor construct = constructor();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xff29AAE3)),

          backgroundColor: Color(0xff29AAE3),
          elevation: 0,
          leading: Image(
            image: AssetImage('images/Icon feather-filter.png'),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Image(
                  image: AssetImage('images/notification.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Image(
                image: AssetImage('images/Icon_Cart.png'),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 336,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff29AAE3),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 35.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13.0),
                      child: TextField(

                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black12,
                          fontFamily: "Segoe UI",
                        ),
                        decoration: InputDecoration(

                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          prefixIcon: new Icon(Icons.search),
                          labelText: "Search product",
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black45,
                            fontFamily: "Segoe UI",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 25.0, right: 25),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('object');
                            Navigator.push(context, MaterialPageRoute(builder: (context) => newItemFlavor()),
                            );
                          },
                          child: Text('Categories',
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                              fontFamily: "Segoe UI",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160.0),
                          child: Text('See all',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: "Segoe UI",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          construct.myArticles('images/breadaaa.png', 'Bread'),
                          construct.myArticles('images/teaaaa.png', 'Oil'),
                          construct.myArticles('images/dairy.png', 'Dairy'),
                          construct.myArticles('images/beverageaaaaaa.png', 'Beverage'),
                          construct.myArticles('images/snacks.png', 'Snacks'),
                          construct.myArticles('images/breadaaa.png', 'Bread'),
                          construct.myArticles('images/teaaaa.png', 'Oil'),
                          construct.myArticles('images/dairy.png', 'Dairy'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      height: 170,
                      child: ListView(

                        scrollDirection: Axis.horizontal,
                        children: [

                          construct.myImages('images/blueimage.png'),
                          construct.myImages('images/pickImage.png'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      height: 30,
                      child: Row(
                        children: [
                          construct.categoryseeAll('Featured', 'See All'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$24.98'),
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$14.98'),
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$64.98'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      height: 30,
                      child: Row(
                        children: [
                          construct.categoryseeAll('New Products', 'See All'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$34.98'),
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$34.98'),
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$34.98'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      height: 30,
                      child: Row(
                        children: [
                          construct.categoryseeAll('Best Sell', 'See All'),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$34.98'),
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$34.98'),
                          construct.featureArticle('images/bottle.png', 'Alwiqaia Honey', r'$34.98'),
                          construct.featureArticle('images/coca-cola.png', 'Coca Cola', r'$34.98'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),


      ),
    );
  }
}

class Bottomnavigation extends StatefulWidget {
  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int index= 0;
  final Screen= [
    home(),
    wishlist(),
    cart(),
    orders(),
    profile(),

  ];
  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.home_outlined,size: 25,color: Colors.white,),
      Icon(Icons.favorite_border,size: 25,color: Colors.white,),
      Icon(Icons.shopping_cart_outlined,size: 25,color: Colors.white,),
      Icon(Icons.menu,size: 25,color: Colors.white,),
      Icon(Icons.perm_identity,size: 25,color: Colors.white,),
    ];
    return Scaffold(

      body: Screen[index],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
        child: CurvedNavigationBar(
          height: 60,
          backgroundColor: Color(0xffF5F6F8),
          buttonBackgroundColor: Color(0xff29ABE2),
          color:Color(0xff43BDF1),
          index: index,
          items: items,
          onTap: (index)=> setState(()=>this.index=index),
        ),
      ),


    );
  }
}