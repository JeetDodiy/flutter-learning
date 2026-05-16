import 'package:flutter/material.dart';

class Calcilatordemo extends StatefulWidget {
  const Calcilatordemo({super.key});

  @override
  State<Calcilatordemo> createState() => _CalcilatordemoState();
}

class _CalcilatordemoState extends State<Calcilatordemo> {
  var no1Control = TextEditingController();
  var no2Control = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: no1Control, keyboardType: TextInputType.number),
          TextField(controller: no2Control, keyboardType: TextInputType.number),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    var no1 = int.parse(no1Control.text.toString());
                    var no2 = int.parse(no2Control.text.toString());
                    var sum = no1 + no2;
                    result = sum.toDouble();
                  });
                },
                child: Text('Add'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    var no1 = int.parse(no1Control.text.toString());
                    var no2 = int.parse(no2Control.text.toString());
                    var sub = no1 - no2;
                    result = sub.toDouble();
                  });
                },
                child: Text('Mau'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    var no1 = int.parse(no1Control.text.toString());
                    var no2 = int.parse(no2Control.text.toString());
                    var mul = no1 * no2;
                    result = mul.toDouble();
                  });
                },
                child: Text('mal'),
              ),
              ElevatedButton(
                onPressed: () {
                  var no1 = double.parse(no1Control.text.toString());
                  var no2 = double.parse(no2Control.text.toString());
                  var div = no1 / no2;

                  setState(() {
                    result = div;
                  });
                },
                child: Text('dev'),
              ),
            ],
          ),
          Text("$result", style: TextStyle(color: Colors.orange, fontSize: 38)),
        ],
      ),
    );
  }
}
