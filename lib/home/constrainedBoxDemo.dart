import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatefulWidget {
  const ConstrainedBoxDemo({super.key});

  @override
  State<ConstrainedBoxDemo> createState() => _ConstrainedBoxDemoState();
}

class _ConstrainedBoxDemoState extends State<ConstrainedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200, maxWidth: 200,minHeight: 20,minWidth: 20),
      child:Container(width: double.infinity,height: double.infinity,color: Colors.red,child: ElevatedButton(onPressed: () {}, child: Text("Button")),)
      ,
    );
  }
}
