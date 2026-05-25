import 'package:flutter/material.dart';

class GridVeiw extends StatefulWidget {
  const GridVeiw({super.key});

  @override
  State<GridVeiw> createState() => _GridVeiwState();
}

class _GridVeiwState extends State<GridVeiw> {
  @override
  Widget build(BuildContext context) {
    var colorsArry = [Colors.yellow,
      Colors.green,
      Colors.deepPurple,
      Colors.white,
      Colors.cyan,
      Colors.orange,
      Colors.white30];
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250,crossAxisSpacing: 12,mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        return Container(color: colorsArry[index]);
      },
      itemCount: colorsArry.length,


    );
  }
}
