import 'package:codecue_two/createAddress.dart';
import 'package:codecue_two/paymentScreen.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class address extends StatefulWidget {
  const address({Key? key}) : super(key: key);

  @override
  _addressState createState() => _addressState();
}
enum Type { radio1, radio2}
class _addressState extends State<address> {
  Type myType = Type.radio1;
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
              child: Text('Address',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff707070),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Segoe UI",
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 20),
            child: RadioListTile(
              title: Text('Shewrapara, Mirpur, Dhaka-1216 \nHouse no: 938 \nRoad no: 9',
              style: TextStyle(
                fontSize: 18
              ),),
              value: 1,
              groupValue:1,
              activeColor: Color(0xff3C66C4),
              onChanged: (e) => {},
            ),
          ),
          RadioListTile(
            title: Text('Chatkhil, Noakhali \nHouse no: 22 \nRoad no: 7',
              style: TextStyle(
                  fontSize: 18
              ),),
            value: 0,
            groupValue:1,
            activeColor: Color(0xff3C66C4),
            onChanged: (e) => {},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320.0),
            child: DottedBorder(

              borderType: BorderType.RRect,
              radius: Radius.circular(8),
              color: Color(0xff29AAE3),
                strokeWidth: 1.5,
              dashPattern: [4, 4],
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Container(
                  width: 320,
                  height: 55,
                  child: ElevatedButton.icon(

                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Color(0xffffffff)),
                    ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => createAddress()),
                        );

                      },
                    label: Text('Add Address',
                      style: TextStyle(
                        fontSize: 16,
                      color: Color(0xff29ABE2)
                    ),),
                      icon: Icon(Icons.add,
                          color: Color(0xff29ABE2)),

                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(

              width: 320,
              height: 55,
              child: ElevatedButton(
                style:  ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff29AAE3)),
                  elevation: MaterialStateProperty.all(5),
                  shadowColor: MaterialStateProperty.all(Color(0xff29AAE3)),
                ),

                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => payment()),
                  );},
                child: Text('Continue to Payment',
                  style: TextStyle(
                    fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xffffffff)
                ),),
              ),
            ),
          )
        ]
      ),

    );
  }
}

