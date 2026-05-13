// ignore_for_file: file_names

import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  const StackDemo({super.key});

  @override
  State<StackDemo> createState() {
    return _StackDemoState();
  }
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: const Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          tooltip: "menu chhe vala",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.handshake_rounded),
            tooltip: 'mara vala Dilchhe',
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Stack(
            children: [
              Container(height: 500, width: 500, color: Colors.white),
              Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withAlpha(5),
                      Colors.black12,
                      Colors.black54,
                      Colors.black87,
                    ],
                  ),
                ),
                //child: Text('this is Jeet Repo', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
              ),
              Container(
                height: 200,
                width: 500,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withAlpha(5),
                      Colors.black12,
                      Colors.black38,
                      Colors.black87,
                    ],
                  ),
                ),
              ),
              Container(
                height: 500,
                width: 500,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.black.withAlpha(2),
                      Colors.black87,
                      Colors.black26,
                    ],
                  ),
                ),
              ),
              Container(
                height: 500,
                width: 500,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withAlpha(2),
                      Colors.black87,
                      Colors.black26,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
