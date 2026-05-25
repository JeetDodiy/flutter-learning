import 'package:flutter/material.dart';

class Richboxdemo extends StatefulWidget {
  const Richboxdemo({super.key});

  @override
  State<Richboxdemo> createState() => _RichboxdemoState();
}

class _RichboxdemoState extends State<Richboxdemo> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(text: 'hii '),
          TextSpan(
            text: ' Jeet!',
            style: TextStyle(
              fontSize: 38,
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              fontFamily: 'PlayfairDisplay',
            ),
          ),
          TextSpan(
            text: ' ,welcome ',
            style: TextStyle(fontFamily: 'BlackOpsOne', fontWeight: FontWeight(400)),
          ),
          TextSpan(
            text: ' Flutter',
            style: TextStyle(fontFamily: 'EduAUVICWANTGuides', fontWeight: FontWeight(400), color: Colors.deepPurpleAccent, fontSize: 48),
          ),
        ],
        style: TextStyle(color: Colors.orangeAccent, fontSize: 24),
      ),
    );
  }
}
