import 'package:flutter/material.dart';

class Callbackdemo extends StatefulWidget {
  const Callbackdemo({super.key});

  @override
  State<Callbackdemo> createState() => _CallbackdemoState();
}

class _CallbackdemoState extends State<Callbackdemo> {
  Callbaka() {
    print('suchale maja ne!!');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBarSide(),
        MidalBarSlid(),
        BotamBarSlid()
      ],
    );
  }
}
class TopBarSide extends StatefulWidget {
  const TopBarSide({super.key});

  @override
  State<TopBarSide> createState() => _TopBarSideState();
}

class _TopBarSideState extends State<TopBarSide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.red,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsetsGeometry.all(12),
          child: SizedBox(child: CircleAvatar(backgroundColor: Colors.blue)),
        ),
        itemCount: 50,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
class MidalBarSlid extends StatelessWidget {
  const MidalBarSlid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsGeometry.all(12),
          child: ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red),
            title: Text('names'),
            trailing: Icon(Icons.restore_from_trash),
          ),
        ),
        itemCount: 50,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
class BotamBarSlid extends StatelessWidget {
  const BotamBarSlid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.black87,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsGeometry.all(12),
          child: Container(height: 30, width: 30, color: Colors.greenAccent),
        ),
        itemCount: 50,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}



