import 'package:flutter/material.dart';

class Sizeboxdemo extends StatelessWidget {
  const Sizeboxdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 200,
      child: ElevatedButton(onPressed: () {}, child: Text('cleck')),
    );
  }
}
