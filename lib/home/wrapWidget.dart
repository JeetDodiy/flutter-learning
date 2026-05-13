import 'package:flutter/material.dart';

class Wrapwidget extends StatefulWidget {
  const Wrapwidget({super.key});

  @override
  State<Wrapwidget> createState() => _WrapwidgetState();
}

class _WrapwidgetState extends State<Wrapwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceAround,
        spacing: 15,
        runSpacing: 15,
        children: [
          Container(color: Colors.yellow, height: 150, width: 150),
          Container(color: Colors.yellow, height: 150, width: 150),
          Container(color: Colors.yellow, height: 150, width: 150),
          Container(color: Colors.yellow, height: 150, width: 150),
          Container(color: Colors.yellow, height: 150, width: 150),
          Container(color: Colors.yellow, height: 150, width: 150),
          Container(color: Colors.yellow, height: 150, width: 150),
         ]
      ),
    );
  }
}
