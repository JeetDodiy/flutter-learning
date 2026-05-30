import 'package:flutter/material.dart';
import 'package:fultter_app_1/home/animation/heroAni_tag.dart';

class ListwheelDemo extends StatefulWidget {
  const ListwheelDemo({super.key});

  @override
  State<ListwheelDemo> createState() => _ListwheelDemoState();
}

class _ListwheelDemoState extends State<ListwheelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        child: ListWheelScrollView(
          itemExtent: 150,
          children: [
            Container(width: 150, color: Colors.blue),
            InkWell(
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

            Container(width: 150, color: Colors.blue),
            Container(width: 150, color: Colors.blue),
            InkWell(
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

            Container(width: 150, color: Colors.red),
            Container(width: 150, color: Colors.green),
            Container(width: 150, color: Colors.black38),
            InkWell(
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

            Container(width: 150, color: Colors.amber),
            InkWell(
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

            Container(width: 150, color: Colors.cyan),
            Container(width: 150, color: Colors.grey),
            Container(width: 150, color: Colors.blue),
            InkWell(
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

            Container(width: 150, color: Colors.blue),
            Container(width: 150, color: Colors.blue),

            InkWell(
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
          ],
        ),
      ),
    );
  }
}
