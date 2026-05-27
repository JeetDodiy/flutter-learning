import 'package:flutter/material.dart';
import 'package:fultter_app_1/home/animation/heroAni_tag.dart';

class HeroAni extends StatefulWidget {
  const HeroAni({super.key});

  @override
  State<HeroAni> createState() => _HeroAniState();
}

class _HeroAniState extends State<HeroAni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Hero Animation", style: TextStyle(fontSize: 25)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroaniTag()),
            );
          },
          child: Hero(
            transitionOnUserGestures: true,
            tag: "backGround",
            child: Image.asset(
              "assets/images/logo.jpg",
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
