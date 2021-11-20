import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class conf extends StatefulWidget {
  const conf({Key? key}) : super(key: key);
  @override
  _confState createState() => _confState();
}

class _confState extends State<conf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('images/Group 56816.png',
        width: 280, height: 280),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text('Confirmation',
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w400
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text('Your order has been placed Successfully.',
              style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontSize: 14,
                  color: Color(0xff656565),
                  fontWeight: FontWeight.w400
              ),),
          ),
          Text('Thankyou for shopping with us.',
            style: TextStyle(
                fontFamily: "Segoe UI",
                fontSize: 14,
                color: Color(0xff656565),
                fontWeight: FontWeight.w400
            ),),


        ],
      ),

    );
  }
}
