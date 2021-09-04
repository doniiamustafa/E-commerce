import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/Home_screen.dart';
import 'package:e_commerce/screens/Login_screen.dart';
import 'package:e_commerce/screens/Signup_screen.dart';
import 'package:e_commerce/screens/SingleProduct_screen.dart';
import 'package:e_commerce/screens/Welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LayoutScreen extends StatefulWidget {
  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  var currentIndex = 0;
  List screens = [
    WelcomeScreen(),
    LoginScreen(),
    SingleProduct(),
  ];
  List titles = [

    AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
    ),
    AppBar(),
    AppBar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titles[currentIndex],
      body: screens[currentIndex],
    );
  }
}
