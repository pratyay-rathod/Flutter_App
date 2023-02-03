/* THIS IS BLANK FILE FOR FUTURE USE*/

import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
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
            "Cart",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 100,bottom: 20),
                child: Column(
                    children: [
                        Container(
                            child: Image(image: AssetImage("assets/images/imgpsh.png")),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 20,bottom: 20),
                            child: Text("Your Cart Is Empty",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("Add Items To It Now"),
                        ),
                        Container(
                            child: MyButton(btnwidth: 150, btntextsize: 14, buttontext: "ORDER NOW", textcolor: Colors.black, onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (_) => BottomNavbarScreen()));
                            }, bgcolor: Colors.amber),
                        )
                    ],
                ),
            ),
        ),
      ),
    );
  }
}
