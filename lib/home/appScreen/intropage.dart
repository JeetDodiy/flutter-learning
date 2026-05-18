import 'package:flutter/material.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Seccan Page",style: TextStyle(fontFamily: 'BlackOpsOne'),),),
      body: Container(color: Colors.yellow,),
    );
  }
}
