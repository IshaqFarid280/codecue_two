import 'package:flutter/material.dart';

class createAddress extends StatefulWidget {
  const createAddress({Key? key}) : super(key: key);

  @override
  _createAddressState createState() => _createAddressState();
}

class _createAddressState extends State<createAddress> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                    child: Text('Create Address',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff707070),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Segoe UI",


                      ),),
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
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 30.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Shipping Address',
                      style: TextStyle(
                          color: Color(0xff707070),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600

                      ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 30.0, top: 14.0),
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                      fontFamily: "Segoe UI",
                    ),
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 30.0, top: 14.0),
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                      fontFamily: "Segoe UI",
                    ),
                    decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: 'Enter Address',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 30.0, top: 14.0),
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                      fontFamily: "Segoe UI",
                    ),
                    decoration: InputDecoration(
                      labelText: 'City',
                      hintText: 'Enter City',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 30.0, top: 14.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                      fontFamily: "Segoe UI",
                    ),
                    decoration: InputDecoration(
                      labelText: 'Postal Code',
                      hintText: 'Enter Postal Code',

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 30.0, top: 14.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                      fontFamily: "Segoe UI",
                    ),
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter Phone Number',

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 50.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Shipping Address',
                      style: TextStyle(
                          color: Color(0xff707070),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600

                      ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 30.0, top: 10.0),
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                      fontFamily: "Segoe UI",
                    ),
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 30.0, top: 14.0),
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                      fontFamily: "Segoe UI",
                    ),
                    decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: 'Enter Address',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 30.0, top: 14.0),
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xff4D4D4D),
                      fontFamily: "Segoe UI",
                    ),
                    decoration: InputDecoration(
                      labelText: 'City',
                      hintText: 'Enter City',
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 68.0, top: 30),
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

                          onPressed: () {},
                          child: Text('Add Address',
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
}