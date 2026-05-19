import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fultter_app_1/home/appScreen/firstpage.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Firstpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          "Vasco.Tech",
          style: TextStyle(
            fontFamily: 'Oi-Regular',
            fontSize: 45,
            color: Colors.lime,
          ),
        ),
      ),
    );
  }
}
