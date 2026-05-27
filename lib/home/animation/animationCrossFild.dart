import 'package:flutter/material.dart';

class Animationcrossfild extends StatefulWidget {
  const Animationcrossfild({super.key});

  @override
  State<Animationcrossfild> createState() => _AnimationcrossfildState();
}

class _AnimationcrossfildState extends State<Animationcrossfild> {
  var anicros = CrossFadeState.showFirst;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(spacing: 25,crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(width: 250, height: 250, color: Colors.white10),
              secondChild: Image.asset(
                "assets/images/Logo.jpg",
                width: 450,
                height: 450,
              ),firstCurve: Curves.bounceInOut,
              secondCurve: Curves.easeInToLinear,
              crossFadeState: anicros,
              duration: Duration(seconds: 2),

            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag == true) {
                    anicros = CrossFadeState.showFirst;
                    flag = false;
                  } else {
                    anicros = CrossFadeState.showSecond;
                    flag = true;
                  }
                });
              },
              child: Text("Click"),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
