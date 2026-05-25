import 'package:flutter/material.dart';

class Padingweg extends StatefulWidget {
  const Padingweg({super.key});

  @override
  State<Padingweg> createState() => _PadingwegState();
}

class _PadingwegState extends State<Padingweg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
      child: Stack(children: [Positioned(bottom: 18,left: 18,child: Container(color: Colors.yellow,height: 100,width: 100,)),]),
    );
  }
}
