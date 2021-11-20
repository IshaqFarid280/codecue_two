import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class constructor extends StatefulWidget {


  Container myArticles(String imagVal, String heading) {
    return Container(
      width: 90,
      child: Wrap(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(79.0),
              child: Image.asset(imagVal,
                  width: 70,
                  height: 70),
            ),
          ),
          ListTile(
            title: Center(
              child: Text(heading,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  fontFamily: "Segoe UI",
                ),),
            ),
          ),
        ],
      ),
    );
  }
  Image myImages (String imageAssets){
    return Image.asset(imageAssets,
        fit: BoxFit.cover,
        width:340);
  }
  Container featureArticle(String featImage, String featTitle, String featprice) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      width: 160,
      child: Card(
        elevation: 5,
        child: GestureDetector(

          child: Wrap(
            children: [
              Center(
                child: Image.asset(featImage,
                    width: 90,
                    height: 95),
              ),
              ListTile(
                title: Text(featTitle,

                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    fontFamily: "Segoe UI",
                    fontWeight: FontWeight.w300,

                  ),),
                subtitle: Text(featprice,

                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontFamily: "Segoe UI",
                    fontWeight: FontWeight.w800,

                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
  Container categoryseeAll(String categorytitle, String sub_category_title) {
    return Container(
      width: 390,
      child: ListTile (
        title: Text(categorytitle,
          style: TextStyle(
          fontSize: 24.0,
          color: Colors.black54,
          fontFamily: "Segoe UI",
        ),
        ),
        trailing: Text(sub_category_title,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black45,
            fontFamily: "Segoe UI",
          ),
        ),
      ),
    );
  }
  Container fruittext(String fruitimage, String fruittext){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 05.0),
      width: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9.0),
        child: Wrap(
          children: [
            Container(
              height: 60,
              child: Center(
                child: Image.asset(fruitimage,
                    width: 35,
                    height: 35),
              ),
            ),
            Center(
              child: Text(fruittext,
              style: TextStyle(
                fontSize: 11,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: "Segoe UI",
              ),
              ),
            ),
          ],

        ),
      ),
    );
  }
  Container netWEIGHT(String netWEIGHT){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: 60,
      child: Wrap(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9.0),
            child: Container(
              margin: EdgeInsets.only(bottom: 35.0),
              height: 60,
            width: 60,
              color: Color(0xffF3F3F3),
              child: Center(
                child: Text(netWEIGHT,

                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Segoe UI",
                ),
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
  Container wishlistProducts(String productImage, String productTEXT, productPRICE){
    return Container(
      width: 150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(19.0),
                        child: Image.asset(productImage,
                            width: 90,
                            height: 95),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 50),
                      child: IconButton(
                          onPressed: () {  },
                          icon: Icon(Icons.favorite,
                              color: Colors.red,
                              size: 22) ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                  children: [
                    Container(
                      height: 50,
                      child: Column(
                      children: [
                        Text(productTEXT,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Segoe UI",
                              color: Colors.black,

                        ),),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(productPRICE,
                          style: TextStyle(
                            color: Color(0xff29ABE2),

                            fontFamily: "Segoe UI",
                          ),),
                        ),
                      ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Image.asset('images/ratingBar.png',
                          width: 65,
                          height: 30),
                    ),
                  ],
              ),
            ),
          ],
        )
      );
  }
  Container cartProducts(
      String cartIMAGE, String CartTITLE,
      String  cartDESCRIPTION, String cartPRICE,
      String  cartADDSUBIMAGE){
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 20),
      width: 300,
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Padding(

              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(cartIMAGE,
                    fit: BoxFit.cover,
                  height: 100,
                  width: 100),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 13.0),
                  child: Text(CartTITLE, style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17

                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5.0),
                  child: Text(cartDESCRIPTION, style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15

                  ),),
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 10, top: 8.0),
                  child: Text(cartPRICE, style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff29ABE2)

                  ),),
                ),
                Padding(

                  padding: const EdgeInsets.only(top: 8.0, left: 20, bottom: 10),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(cartADDSUBIMAGE,
                      width: 122,
                      height: 40),
                    ),
                  ),
                )

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0, bottom: 80),
              child: PopupMenuButton(
                  itemBuilder: (context) {
                    return[
                      PopupMenuItem(
                        value: 'Remove',
                          child: Text('Remove')),
                      PopupMenuItem(
                        value: 'addtowishlist',
                          child: Text('Add to wishlist')),
                    ];
                  }
              ),
            )
          ],

        ),
      ),

    );


  }
  Container checkOUTProducts(
      String checkOUTIMAGE, String checkOUTTITLE,
      String  checkOUTDESCRIPTION, String checkOUTPRICE){
    return Container(
      width: 370,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only( bottom: 20, left: 15, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(checkOUTIMAGE,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100),
              ),
            ),
            Column(

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 13.0),
                  child: Text(checkOUTTITLE, style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17

                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5.0),
                  child: Text(checkOUTDESCRIPTION, style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15

                  ),),
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 10, top: 8.0),
                  child: Text(checkOUTPRICE, style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff29ABE2)

                  ),),
                ),

              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  child: Column(
                    children: [
                      PopupMenuButton(
                          itemBuilder: (context) {
                            return[
                              PopupMenuItem(
                                  value: 'Remove',
                                  child: Text('Remove')),
                              PopupMenuItem(
                                  value: 'addtowishlist',
                                  child: Text('Add to wishlist')),
                            ];
                          }
                      ),
                      Padding(
                        padding: const EdgeInsets.only( top: 10),
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Color(0xff29AAE3),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child:Center(
                                child: Text('02', style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),),
                              )
                          ),
                        ),
                      ),

                    ],

                  ),

                ),
              ),
            ),
          ],

        ),
      ),

    );


  }
  Container paywithCheckOut(String imageCheckOut, String imagetext12){
    return Container(

      width:110,
      child: Card(
        elevation: 5,
        child: Wrap(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Center(
                child: Image.asset(imageCheckOut,
                height: 90,
                    width: 90,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                child: Text(imagetext12, style: TextStyle(
                  fontFamily: "Segoe UI"

                ),),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<constructor> createState() => _constructorState();
}


class _constructorState extends State<constructor> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
