import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Icondemo extends StatefulWidget {
  const Icondemo({super.key});

  @override
  State<Icondemo> createState() => _IcondemoState();
}

class _IcondemoState extends State<Icondemo> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Icon(Icons.back_hand, color: Colors.yellow, size: 58)
    ,FaIcon(FontAwesomeIcons.bluetoothB,color: Colors.red,size: 60,)
    ]);
  }
}
