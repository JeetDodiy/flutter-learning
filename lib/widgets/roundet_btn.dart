import 'package:flutter/material.dart';

class Roundet_btn extends StatelessWidget {
  final Icon? addicon;
  final String? btnname;
  final String? showText;
  final String? text;
  final Color? bgColor;
  final TextStyle? textStyle;

  Roundet_btn({this.addicon, required this.btnname, this.showText, this.bgColor = Colors.lightGreen, this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed: () {
            print(showText);
          },
          child: addicon != null ? Center(child: Row(children: [addicon!, Text(btnname!),])) : Text(text!),
          style: ElevatedButton.styleFrom(backgroundColor: bgColor,shadowColor: bgColor),
      );
  }
}
