import 'package:flutter/material.dart';

class ClipRRectdemo extends StatefulWidget {
  const ClipRRectdemo({super.key});

  @override
  State<ClipRRectdemo> createState() => _ClipRRectdemoState();
}

class _ClipRRectdemoState extends State<ClipRRectdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.elliptical(100, 100),
            topRight: Radius.circular(22),
            bottomRight: Radius.circular(22),
            bottomLeft: Radius.circular(22),
          ),
          child: Container(height: 250, width: 550, color: Colors.amber,child: Image.asset('assets/images/Men.jpg',fit: BoxFit.fill,),),
        ),
      ),
    );
  }
}
