import 'package:flutter/material.dart';

class Rangslider extends StatefulWidget {
  const Rangslider({super.key});

  @override
  State<Rangslider> createState() => _RangsliderState();
}

class _RangsliderState extends State<Rangslider> {
  // Make rating a state variable so it persists after rebuilds
  var rating = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Range Bar',
          style: TextStyle(
            fontSize: 28,
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Value : ${rating.toStringAsFixed(1)}",style: TextStyle(fontSize: 38),),
            SizedBox(
              height: 50,
            ),
            Slider(
              value: rating,
              max: 1000,
              // divisions: 25,
              label: rating.toStringAsFixed(1),
              onChanged: (var value) {
                setState(() {
                  rating = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}