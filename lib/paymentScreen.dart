import 'package:codecue_two/check_14.dart';
import 'package:codecue_two/paywith_CHECKOUT.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
String? _group1SelectedValue;
String? _group2SHIPPINGSelectedValue;
@override
  void initState() {
    // TODO: implement initState
  _group1SelectedValue = "1";
  _group2SHIPPINGSelectedValue = "2";
  super.initState();
  }

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
          Flexible(
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 20, bottom: 15),
                    child: Text('Payment Method',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color(0xff707070),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Segoe UI",


                      ),),
                  ),
                ),
                SizedBox(
                  height: 32,
                  child: RadioListTile(
                    title: Text('Online Payment',
                    style: TextStyle(

                      fontFamily: "Segoe UI",
                    ),),
                      activeColor:  Color(0xff29AAE3),

                      value: "1",
                      groupValue: _group1SelectedValue,
                      onChanged: _group1Changes,
                    ),
                ),
                SizedBox(

                  height: 32,
                  child: RadioListTile(

                    title: Text('Cash on Delivery', style: TextStyle(

                      fontFamily: "Segoe UI",
                    ),),
                    activeColor:  Color(0xff29AAE3),

                      value: "2",
                      groupValue: _group1SelectedValue,
                      onChanged: _group1Changes,
                    ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 30, bottom: 15),
                    child: Text('Shipping Method',
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xff707070),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Segoe UI",


                      ),),
                  ),
                ),
                SizedBox(
                  height: 48,
                  child: RadioListTile(

                    title: Text('Free shipping (within 24H) (Weight:\n0.00kg) - RM0.00',
                      style: TextStyle(

                        fontFamily: "Segoe UI",
                      ),),
                    activeColor:  Color(0xff29AAE3),

                    value: "1",
                    groupValue: _group2SHIPPINGSelectedValue,
                    onChanged: _group2SHIPChanges,
                  ),
                ),
                SizedBox(

                  height: 48,
                  child: RadioListTile(
                    title: Text('Same Time Delivery (1-3H) (Weight: \n0.00kg) - RM19.00', style: TextStyle(

                      fontFamily: "Segoe UI",
                    ),),
                    activeColor:  Color(0xff29AAE3),

                    value: "2",
                    groupValue: _group2SHIPPINGSelectedValue,
                    onChanged: _group2SHIPChanges,
                  ),
                ),
                RadioListTile(
                  title: Text('Pickup From Store - RM0.00', style: TextStyle(

                    fontFamily: "Segoe UI",
                  ),),
                  activeColor:  Color(0xff29AAE3),

                  value: "3",
                  groupValue: _group2SHIPPINGSelectedValue,
                  onChanged: _group2SHIPChanges,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  color: Color(0xff29AAE3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Apply Coupon Code', style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: "Segoe UI",
                      ), ),
                      Text('Enter your coupon code if you have any', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "Segoe UI",
                      ), ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),
                                    topLeft: Radius.circular(15.0)),
                              ),
                              width: 250,
                              height: 45,
                              //color: Colors.blue,
                              child:  TextField(

                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontFamily: "Segoe UI",
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFFFFFFF),
                                  labelText: "Enter Coupon",
                                  labelStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black45,
                                    fontFamily: "Segoe UI",
                                  ),
                                ),
                              )
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Color(0xff707070),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0)),
                              ),
                              width: 100,
                              height: 45,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color(0xff707070)),
                                ),
                                onPressed: () {},
                                child: Text('Apply',
                                    style: TextStyle(fontSize: 12,
                                      color: Colors.white,)),
                              ),

                            ),
                          ],
                        ),
                      )


                    ],
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
                      fontWeight: FontWeight.w700,
                        fontSize: 16,

                    ),),
                    trailing: Text('RM 160.00', style: TextStyle(
                        fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),),
                  ),
                ),

                Expanded  (
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 28.0, top: 30),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => check()),
                            );
                          },
                          child: Text('Checkout',
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
          ),
        ],
      ),
    );
  }
void _group1Changes(String? value){
  setState(() {
    _group1SelectedValue = value;
  });
}

void _group2SHIPChanges(String? value1){
  setState(() {
    _group2SHIPPINGSelectedValue = value1;
  });
}

}


