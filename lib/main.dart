import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/cartscreen.dart';
import 'package:flutterforbeginners2/screens/loginscreen.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/screens/orderscreen.dart';
import 'package:flutterforbeginners2/screens/profilescreen.dart';
import 'package:flutterforbeginners2/screens/splashscreen.dart';
import 'package:flutterforbeginners2/screens/wishlistscreen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen());
  }
}
