import 'package:flutter/material.dart';

class RangMapan extends StatefulWidget {
  const RangMapan({super.key});

  @override
  State<RangMapan> createState() => _RangMapanState();
}

class _RangMapanState extends State<RangMapan> {
  RangeValues value = const RangeValues(0.5, 0.8);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Value of Start : ${value.start.toString()} , Value of end : ${value.end.toString()}",style: TextStyle(fontSize: 38),),
            RangeSlider(
              values: value,
              max: 100,
              activeColor: Colors.lime,
              inactiveColor: Colors.lime.shade200,
              divisions: 20,
              labels: RangeLabels(value.start.toStringAsFixed(0), value.end.toStringAsFixed(0)),
              onChanged: (newValue) {
                value = newValue;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
