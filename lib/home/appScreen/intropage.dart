import 'package:flutter/material.dart';

class Intropage extends StatefulWidget {
  var homefromValu;
  Intropage(this.homefromValu);
  @override
  State<Intropage> createState() => _IntropageState(homefromValu);
}

class _IntropageState extends State<Intropage> {

  var valueformhome;
  _IntropageState(this.valueformhome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seccan Page", style: TextStyle(fontFamily: 'BlackOpsOne')),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Column(children: [
            Text('Hii $valueformhome',style: TextStyle(fontFamily: 'Oi-Regular',fontSize: 40,color: Colors.indigo.shade900),),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);

            }, child: Text('Back'))
          ]),
        ),
      ),
    );
  }
}
