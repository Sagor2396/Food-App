import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_app/screens/tabs_screen.dart';

import 'categories_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Adjust the duration as needed
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => TabsScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.deepPurple,
          Colors.pink,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
          child: Text(
        'Food App',
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decoration: TextDecoration.none),
      )),
    );
  }
}
