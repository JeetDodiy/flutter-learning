import 'package:flutter/material.dart';

class HeroaniTag extends StatefulWidget {
  const HeroaniTag({super.key});

  @override
  State<HeroaniTag> createState() => _HeroaniTagState();
}

class _HeroaniTagState extends State<HeroaniTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green.shade300,
        title: Center(
          child: Text(
            "Hero Animation Tag Page",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Center(
        child: Hero(
          tag: "backGround",
          child: Image.asset(
            "assets/images/logo.jpg",
            width: 500,
            height: 500,
          ),
        ),
      ),
    );
  }
}
