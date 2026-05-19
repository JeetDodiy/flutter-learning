import 'package:flutter/material.dart';
import 'package:fultter_app_1/home/appScreen/intropage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  var textcon1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fist Page",
          style: TextStyle(fontSize: 35, fontFamily: "EduAUVICWANTGuides"),
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body:Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hii this is my first page ",
                style: TextStyle(fontSize: 28, color: Colors.blueAccent),
              ),
              SizedBox(width: 450,child: TextField(controller: textcon1,style: TextStyle(fontSize: 24,fontFamily: 'Oi-Regular'),),height: 80,),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intropage(textcon1.text.toString())),
                    );
                  },
                  child: Text("Click"),
                ),
              ),
            ],
          ),
      ),
      backgroundColor: Colors.purple,
    );
  }
}
