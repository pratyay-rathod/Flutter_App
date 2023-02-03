import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/homescreen.dart';
import 'package:flutterforbeginners2/screens/orderscreen.dart';
import 'package:flutterforbeginners2/screens/profilescreen.dart';
import 'package:flutterforbeginners2/screens/wishlistscreen.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

import 'cartscreen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WishListScreen(),
    OrderScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedLabelStyle: TextStyle(color: _myconfig.myButtonbackgroundColor),
        selectedIconTheme:
            IconThemeData(color: _myconfig.myButtonbackgroundColor),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFFC0C5CA),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
              size: _myconfig.myIconSize * 0.55,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined,
                size: _myconfig.myIconSize * 0.55),
            label: 'Wish List',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.airport_shuttle, size: _myconfig.myIconSize * 0.55),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined,
                size: _myconfig.myIconSize * 0.55),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp, size: _myconfig.myIconSize * 0.55),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _myconfig.myButtonbackgroundColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
