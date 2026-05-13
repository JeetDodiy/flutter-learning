import 'package:flutter/material.dart';

/// Flutter code sample for [TextField].

class TextDemo extends StatefulWidget {
  const TextDemo({super.key});

  @override
  State<TextDemo> createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  var emailEditingCon = TextEditingController();
  var passEditingCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailEditingCon,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: Colors.red,width: 2)
                  ),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:  Color(0xFF4A148C)),borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'Email',
                  icon: Icon(Icons.email)
                ),
              ),
            ),
            TextField(
              obscureText: true,
              controller: passEditingCon,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(color: Colors.red,width: 2)
                ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent),borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: 'Password',
                icon: Icon(Icons.password)
              ),

            ),

            ElevatedButton(onPressed: (){
              String priEmail = emailEditingCon.text.toString();
              String priPass = passEditingCon.text;
              print('Email = $priEmail , Password = $priPass' );
            }, child: Text('Login')),
          ],
        )
    );
  }
}
