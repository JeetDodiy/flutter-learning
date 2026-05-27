import 'package:flutter/material.dart';

class AniCon extends StatefulWidget {
  const AniCon({super.key});

  @override
  State<AniCon> createState() => _AniConState();
}

class _AniConState extends State<AniCon> {
  var _conHeight = 250.0;
  var _conWidth = 250.0;
  var _boderRedustle = 250.0;
  var _boderRedusbre = 250.0;
  Color bgColorsAni = Colors.white10;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_boderRedustle),
                  bottomRight: Radius.circular(_boderRedusbre),
                ),
                color: bgColorsAni,
              ),
              height: _conHeight,
              width: _conWidth,

              duration: Duration(seconds: 3),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _conHeight = 450;
                    _conWidth = 600;
                    _boderRedustle = 250.0;
                    _boderRedusbre = 250.0;
                    bgColorsAni = Colors.amber.shade800;
                    flag = false;
                  } else {
                    _conHeight = 100;
                    _conWidth = 200;
                    _boderRedustle = 300.0;
                    _boderRedusbre = 300.0;
                    bgColorsAni = Colors.indigoAccent;
                    flag = true;
                  }
                });
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
    );
  }
}
