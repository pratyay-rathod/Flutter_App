/* THIS IS BLANK FILE FOR FUTURE USE*/

import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  Widget CrtContainer(String title1,String description,String Dollars) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // alignment: Alignment.topLeft,
                //  height: 100,
                height: 25,
                width: 200,
                child: Text(
                  "$title1",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              // SizedBox(width: 50,),
              Container(
                // alignment: Alignment.bottomLeft,
                // height: 100,
                width: 200,
                child: Text(
                  "$description",
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
          Container(
            // alignment: Alignment.topLeft,
            height: 30,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '\$ $Dollars',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // SizedBox(width: 50,),
          Container(
              // alignment: Alignment.bottomLeft,
              child: Icon(Icons.add_shopping_cart_rounded))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: _myconfig.myElevation,
        leading: InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/images/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Orders",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                    CrtContainer("2022-12-12","INV - 2022120256731","7.54"),
                    Divider(color: Colors.grey,),
                    CrtContainer("2022-09-09","INV - 2022090255741","7.54"),
                    Divider(color: Colors.grey,),
                    CrtContainer("2022-09-09","INV - 2022090255740","23.65"),
                    Divider(color: Colors.grey,),
                    CrtContainer("2022-08-31","INV - 2022080255660","7.54"),
                    Divider(color: Colors.grey,),
                    CrtContainer("2022-08-31","INV - 2022080255659","7.54"),
                    Divider(color: Colors.grey,),
                    CrtContainer("2022-08-31","INV - 2022080255629","7.54"),
                    Divider(color: Colors.grey,),
                    CrtContainer("2022-08-31","INV - 20220502554457","7.54"),
                ],
              ))),
    );
  }
}
