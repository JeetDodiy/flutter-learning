import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class dateTimeDemo extends StatefulWidget {
  const dateTimeDemo({super.key});

  @override
  State<dateTimeDemo> createState() => _dateTimeDemoState();
}

class _dateTimeDemoState extends State<dateTimeDemo> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('chalu time = ${DateFormat('yMMMMEEEEd').format(time)}'),
            ElevatedButton(onPressed: (){
              setState(() {

              });
            }, child: Text("Click"))
          ],
        ),
      ),
    );
  }
}
