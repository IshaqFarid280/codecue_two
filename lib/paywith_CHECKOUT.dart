import 'package:codecue_two/check_14.dart';
import 'package:codecue_two/confirmation.dart';
import 'package:codecue_two/constructorClass.dart';
import 'package:flutter/material.dart';

class paywithCheckOutScreen extends StatefulWidget {
  const paywithCheckOutScreen({Key? key}) : super(key: key);

  @override
  _paywithCheckOutScreenState createState() => _paywithCheckOutScreenState();
}

class _paywithCheckOutScreenState extends State<paywithCheckOutScreen> {
  constructor contr = constructor();
  bool checkBoxValue = false;
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
              child: Text('Online Payment',
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff1a1a1a),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Segoe UI",


                ),),
            ),
          ),
          ListTile(
            leading: Text('Bill ID: 0qto4ipx',
            style: TextStyle(color: Color(0xff707070),
                fontFamily: "Segoe UI",
              fontSize: 16
            ),
            ),
            trailing: Text('19/11/2021', style: TextStyle(
              fontFamily: "Segoe UI",
                fontSize: 16,
              color: Color(0xff707070),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
            child: Text('ZWREXASIA STORE - EASY IT SDN BHD (1262161H)', style: TextStyle(
                fontFamily: "Segoe UI",
              fontSize: 28
            ),),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            width: 355,
            child: Text('Order 214245 - ALAHLAM OLIVE OIL x 1',
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontSize: 15,
              color: Color(0xff707070),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 25, top: 30),
            child: Row(
              children: [
                Text('Name: ',
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    fontWeight: FontWeight.w600,
                    fontSize: 17

                ),),
                Text('Ishaq Farid',
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    fontSize: 17

                ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 25, top: 6),
            child: Row(
              children: [
                Text('Email: ',
                  style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      fontSize: 17

                  ),),
                Text('Ishaqfardixxx@gmail.com',
                  style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontSize: 17

                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 25, top: 6),
            child: Row(
              children: [
                Text('ID: ',
                  style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      fontSize: 17

                  ),),
                Text('21312',
                  style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontSize: 17

                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 25, top: 26),
            child: Row(
              children: [
                Text('Pay with: ',
                  style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      fontSize: 22

                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  contr.paywithCheckOut('images/lion_ICON.png', 'Maybank2u'),
                  contr.paywithCheckOut('images/payment2.png', 'CIMB Clicks'),
                  contr.paywithCheckOut('images/payment33.png', 'OCBC Bank'),
                  contr.paywithCheckOut('images/payment44.png', 'Hong Bank'),
                  contr.paywithCheckOut('images/lion_ICON.png', 'Maybank2u'),
                  contr.paywithCheckOut('images/payment2.png', 'CIMB Clicks'),
                  contr.paywithCheckOut('images/payment33.png', 'OCBC Bank'),
                  contr.paywithCheckOut('images/payment44.png', 'Hong Bank'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Row(
              children: [
                Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool? value){
                    setState(() {
                      print(value);
                      checkBoxValue  = value!;
                    });
                  },
                ),
                Text(
                  'Billing address is same as shipping address.',
                  style: TextStyle(
                    color: Color(0xff4D4D4D),
                    fontFamily: "Segoe UI",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 68.0, top: 10),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => conf()),
                    );
                    },
                    child: Text('Pay Now',
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
