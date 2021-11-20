import 'package:codecue_two/address.dart';
import 'package:codecue_two/constructorClass.dart';
import 'package:flutter/material.dart';
class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  constructor constructorCART = constructor();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20, bottom: 10),
                child: Text('Cart',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff707070),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Segoe UI",


                  ),),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  constructorCART.cartProducts('images/cocoCola.png', 'Coca Cola', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/orange.png', 'Orange Juice', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/apple.png', 'Milk Shake', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/onion.png', 'Fruit Juice', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                constructorCART.cartProducts('images/cocoCola.png', 'Coca Cola', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/orange.png', 'Orange Juice', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/apple.png', 'Milk Shake', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/onion.png', 'Fruit Juice', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                constructorCART.cartProducts('images/cocoCola.png', 'Coca Cola', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/orange.png', 'Orange Juice', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/apple.png', 'Milk Shake', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),
                  constructorCART.cartProducts('images/onion.png', 'Fruit Juice', 'Lotto.LTD', 'RM 68.00', 'images/add.png'),

                ],

              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xff29AAE3),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => address()),
            );
          },
          label: Text('Continue',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800
            ),),
        ),

      ),
    );
  }
}
