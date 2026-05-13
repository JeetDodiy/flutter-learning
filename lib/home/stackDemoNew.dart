import 'package:flutter/material.dart';

class StackDemoNew extends StatefulWidget {
  const StackDemoNew({super.key});

  @override
  State<StackDemoNew> createState() => _StackDemoNewState();
}

class _StackDemoNewState extends State<StackDemoNew> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [Container(height: 200, width: 200, color: Colors.red),
    Container(height: 190,width: 190,color: Colors.orange,)
      ,Positioned(top: -70,left: 20,child: CircleAvatar(backgroundColor: Colors.green,radius: 70,))
    ]);
  }
}
