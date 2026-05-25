import 'package:flutter/material.dart';
class AniCon extends StatefulWidget {
  const AniCon({super.key});

  @override
  State<AniCon> createState() => _AniConState();
}

class _AniConState extends State<AniCon> with SingleTickerProviderStateMixin{
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 15));
    animation = Tween(begin: 30 , end: 400.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.black87 , end: Colors.lime.shade300).animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {

      });
    },);
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(color: colorAnimation.value,width: animation.value,height: animation.value,)),
    );
  }
}
