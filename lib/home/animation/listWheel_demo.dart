import 'package:flutter/material.dart';
import 'package:fultter_app_1/home/animation/heroAni_tag.dart';

class ListwheelDemo extends StatefulWidget {
  const ListwheelDemo({super.key});

  @override
  State<ListwheelDemo> createState() => _ListwheelDemoState();
}
var indexValue = [1,2,3,4,5,6,7,8,9,10];
class _ListwheelDemoState extends State<ListwheelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        child: ListWheelScrollView(
          itemExtent: 150,
          children: indexValue.map((value) => InkWell(
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
          ) ).toList()
        ),
      ),
    );
  }
}
