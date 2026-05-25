import 'package:flutter/material.dart';

class RipalAnimation extends StatefulWidget {
  const RipalAnimation({super.key});

  @override
  State<RipalAnimation> createState() => _RipalAnimationState();
}

// Keeping your original radius values
var listRadius = [100.0, 200.0, 300.0, 400.0, 500.0, 600.0];

class _RipalAnimationState extends State<RipalAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation; // Added explicit <double> type

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4), // 4 seconds feels a bit smoother
    );

    // Explicitly typed double tween
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {});
    });

    // Changed to repeat() so the ripple effect loops indefinitely
    _animationController.repeat();
  }

  @override
  void dispose() {
    // Always dispose your controller to avoid memory leaks!
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final reversedRadiusList = listRadius.reversed.toList();

    return Scaffold(
      backgroundColor: Colors.black, // Dark background makes the red ripples pop
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: reversedRadiusList.map((radius) {
            return Container(
              width: radius * _animation.value,
              height: radius * _animation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // FIX: Moved the color inside the BoxDecoration
                color: Colors.red.withOpacity(1.0 - _animation.value),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}