import 'package:codecue_two/constructorClass.dart';
import 'package:codecue_two/paywith_CHECKOUT.dart';
import 'package:flutter/material.dart';

class check extends StatefulWidget {
  const check({Key? key}) : super(key: key);

  @override
  _checkState createState() => _checkState();
}

class _checkState extends State<check> {
  constructor const_CHECKOUT = constructor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace, color: Colors.black,),

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
              child: Text('Checkout',
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff1a1a1a),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Segoe UI",


                ),),
            ),
          ),
          const_CHECKOUT.checkOUTProducts('images/cocoCola.png', 'Coca Cola', 'Lotto.LTD', 'RM 68.00'),
          const_CHECKOUT.checkOUTProducts('images/orange.png', 'Orange Juice', 'Lotto.LTD', 'RM 68.00'),
          SizedBox(
            height: 42,
            child: ListTile(
              dense: true,
              leading: Text('Payment Method', style: TextStyle(
                  fontSize: 16
              ),),
              trailing: Text('Online Payment', style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          SizedBox(
            height: 48,
            child: ListTile(
              dense: true,
              leading: Text('Shipping Method', style: TextStyle(
                  fontSize: 16
              ),),
              trailing: Text('Free shipping (within 24H)\n(Weight: 0.00kg) - RM0.00', style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Divider(
              color: Colors.black12,
              thickness: 2,
            ),
          ),

          SizedBox(

            height: 32,
            child: ListTile(
              dense: true,
              leading: Text('Subtotal', style: TextStyle(
                  fontSize: 16
              ),),
              trailing: Text('RM 160.00', style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          SizedBox(

            height: 32,
            child: ListTile(
              dense: true,
              leading: Text('Discount', style: TextStyle(
                  fontSize: 16
              ),),
              trailing: Text('5 %', style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          SizedBox(
            height: 32,
            child: ListTile(
              dense: true,
              leading: Text('Shipping', style: TextStyle(
                  fontSize: 16
              ),),
              trailing: Text('RM 10.00', style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 2,
            color: Colors.black12,
          ),
          SizedBox(

            height: 42,
            child: ListTile(
              leading: Text('Subtotal', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,

              ),),
              trailing: Text('RM 160.00', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),
            ),
          ),
          Expanded  (
            child: Padding(
              padding: const EdgeInsets.only(bottom: 68.0),
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(

                  width: 320,
                  height: 55,
                  child: ElevatedButton(
                    style:  ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                      shadowColor: MaterialStateProperty.all(Color(0xff29AAE3)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff29AAE3)),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => paywithCheckOutScreen()),
                      );
                    },
                    child: Text('Buy',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffffffff)
                      ),),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
