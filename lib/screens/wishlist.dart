import 'package:codecue_two/constructorClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class wishlist extends StatefulWidget {
  const wishlist({Key? key}) : super(key: key);

  @override
  _wishlistState createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  constructor constructorWISH = constructor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.keyboard_backspace,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20, bottom: 15),
              child: Text('Wishlist',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff707070),
                fontWeight: FontWeight.w400,
                fontFamily: "Segoe UI",


              ),),
            ),
          ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: GridView.count(

            crossAxisCount: 2,
              mainAxisSpacing: 9.0,
              crossAxisSpacing: 9.0,
            children: <Widget>[
              constructorWISH.wishlistProducts('images/bottle.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/coca-cola.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/bottle.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/coca-cola.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/bottle.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/coca-cola.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/bottle.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/coca-cola.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/bottle.png', 'Coca Cola', 'RM 50.00'),  constructorWISH.wishlistProducts('images/cocoCola.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/coca-cola.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/cocoCola.png', 'Coca Cola', 'RM 50.00'),
              constructorWISH.wishlistProducts('images/coca-cola.png', 'Coca Cola', 'RM 50.00'),

            ],
            ),
          ),
        ),
        ],
    ),
    );
  }
}
