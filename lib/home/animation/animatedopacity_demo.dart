import 'package:flutter/material.dart';

class AniOpo extends StatefulWidget {
  const AniOpo({super.key});

  @override
  State<AniOpo> createState() => _AniOpoState();
}

class _AniOpoState extends State<AniOpo> {
  var _aniopac = 0.0;
  bool flag = true;
  bool flag2 = true;

  Color backcolor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(curve: Curves.elasticInOut,
              opacity: _aniopac,
              duration: Duration(seconds: 3),
              child: Container(
                height: 250,
                width: 250,

                color: Colors.indigo.shade800,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag2 == true) {
                        backcolor = Colors.green;
                        flag2 = false;
                      } else {
                        backcolor = Colors.black;
                        flag2 = true;
                      }
                    });
                  },
                  child: Text('Click', style: TextStyle(fontSize: 35)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag == true) {
                    _aniopac = 1.0;
                    flag = false;
                  } else {
                    _aniopac = 0;
                    flag = true;
                  }
                });
              },
              child: Text(
                "Click",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
