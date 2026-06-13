import 'package:flutter/material.dart';
class MappingListsDemo extends StatefulWidget {
  const MappingListsDemo({super.key});

  @override
  State<MappingListsDemo> createState() => _MappingListsDemoState();
}

class _MappingListsDemoState extends State<MappingListsDemo> {
  var arrData = [
    'ray',
    'faltu',
    'jeetesh'
    'ramu',
    'rakesh',
    'simla',
    'sera',
    'jeet'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: [

      ],),
    );
  }
}
