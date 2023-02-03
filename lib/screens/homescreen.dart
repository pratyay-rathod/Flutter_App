/* THIS IS BLANK FILE FOR FUTURE USE*/

import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = ['assets/images/slider.jpg'];

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  Widget CrtColumn(String image, String txt1, String txt2) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.only(right: 10, top: 20),
          shape: RoundedRectangleBorder(
            //<-- SEE HERE
            side: BorderSide(
              color: Color.fromARGB(255, 194, 196, 195),
            ),
          ),
          elevation: 2,
          child: Image.asset(
            image,
            height: 125.0,
            width: 150.0,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          child: Text(txt1),
        ),
        Container(
          child: Text(
            txt2,
            style: TextStyle(fontSize: 8),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leadingWidth: 80,
            elevation: _myconfig.myElevation,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/images/karmalogo.png",
                        color: Colors.black,
                        height: 40,
                      ),
                    ],
                  ),
                )),
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Center(
                child: Text(
                  "karma louge",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            actions: [
              Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                  child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: SearchBar(
                        height: 20,
                        showFilterIcon: false,
                        showSearchIcon: true,
                        text: "Search Products",
                        onTap: () {},
                      ),
                    ),
                    Container(
                    height: 200,
                    width: double.infinity,
                    child: CarouselSlider(
                      options: CarouselOptions(autoPlay: true),
                      items: imgList
                          .map((item) => Center(
                              child: Image.asset(item,
                                  fit: BoxFit.cover, width: 1000)))
                          .toList(),
                    )),
                    Container(
                      margin: EdgeInsets.only( bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CrtColumn("assets/images/catagory1.gif",
                                  "On Sale!", "On Sale"),
                              CrtColumn("assets/images/staticsamosa.png",
                                  "Starter", "Samosa, Panner, Pakora")
                            ],
                          ),
                          Row(
                            children: [
                              CrtColumn("assets/images/catagory3.png",
                                  "Beverages", "Lassi  Tea Ice  Tea"),
                              CrtColumn("assets/images/catagory4.png",
                                  "Starter", "Samosa, Panner, Pakora")
                            ],
                          ),
                          Row(
                            children: [
                              CrtColumn("assets/images/catagory5.png", "Juice",
                                  "Lassi  Tea Ice  Tea"),
                              CrtColumn("assets/images/catagory6.png",
                                  "Starter", "Samosa, Panner, Pakora")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )))),
    );
  }
}
