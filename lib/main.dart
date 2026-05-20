import 'package:flutter/material.dart';
import 'package:fultter_app_1/home/bmi_projekt/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "this",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(child:FirstPage()),
      ),
    );
  }
}