import 'package:flutter/material.dart';
class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(height: 350,width: 350,color: Colors.red,));
  }
}
