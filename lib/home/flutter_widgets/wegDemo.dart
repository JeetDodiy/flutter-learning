import 'package:flutter/material.dart';

class Wegdemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WegdemoSate();
  }}
  class _WegdemoSate extends State<StatefulWidget>{
  var number = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Number :$number",style: TextStyle(),),
            ElevatedButton(onPressed: (){
              setState(() {
                number ++;

              });

            }, child: Text('Press'))
          ],
        ),
      ),
    );
  }

  }



