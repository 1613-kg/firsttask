import 'package:flutter/material.dart';

class homeTweenAnimation extends StatefulWidget {
  const homeTweenAnimation({super.key});

  @override
  State<homeTweenAnimation> createState() => _homeTweenAnimationState();
}

class _homeTweenAnimationState extends State<homeTweenAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: 2),
        child: Text("Tween Animation"),
        builder: (BuildContext context, value, child) {
          return Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.all(value * 50),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
