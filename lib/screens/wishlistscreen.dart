import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/homescreen.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
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
              "Wishlist",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  // color: Colors.green,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "1 Reslute",
                        style: TextStyle(color: Color(0xFF6D6F71)),
                      ),
                      Spacer(), //Icon(Icons.filter_alt_outlined)
                      ImageIcon(AssetImage("assets/images/filter.png")),
                      SizedBox(width: 20),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0XFFEDF2F7),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        child: Image(
                            image: AssetImage("assets/images/catagory4.png")),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 30),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5,top:20),
                              width: 150,
                              child: Text(
                                "Taj Mahal",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              width: 150,
                              child: Text("Taj Mahal",style: TextStyle(fontSize: 12),),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              width: 150,
                              child: Text("\$ 7.00",style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              width: 150,
                              child: Text("\$ 10.00 Save \$ 3.00 (30.00)%",style: TextStyle(fontSize: 10),),
                            ),
                            Container(
                              
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 20,
                          width: 20,
                          child: Image(image: AssetImage("assets/images/addbrn.png")),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
