import 'package:flutter/material.dart';

class GradientDemo extends StatefulWidget {
  const GradientDemo({super.key});

  @override
  State<GradientDemo> createState() => _GradientDemoState();
}

class _GradientDemoState extends State<GradientDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange.shade300, Colors.white10,Colors.green.shade900],
              begin: FractionalOffset(0.7,0.0),
                end: FractionalOffset(0.0, 0.5)
            ),
          ),
        ),
      ),
    );
  }
}
