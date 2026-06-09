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
        child: Container(alignment: Alignment.topCenter,
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.orange.shade600,
                Colors.pink,
                Colors.green.shade200],
              stops: [0.3,0.7,0.0],
              center: Alignment.topCenter
            ),
          ),
          child: Text("BMI",style: TextStyle(fontSize: 80),),
        ),
      ),
    );
  }
}
