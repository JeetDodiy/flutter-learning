import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Text('jeet');
      },
      separatorBuilder: (context, index) {
        return Divider(height: 300);
      },
      itemCount: 100,
    );
  }
}
