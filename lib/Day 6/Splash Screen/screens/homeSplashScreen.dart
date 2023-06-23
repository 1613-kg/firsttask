import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firsttask/Day%206/Splash%20Screen/screens/navafter.dart';
import 'package:flutter/material.dart';

class homeSplashScreen extends StatelessWidget {
  const homeSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 5,
          splash: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.blue.withOpacity(0.7)),
            child: Text(
              "Splash Example",
              textAlign: TextAlign.center,
            ),
          ),
          nextScreen: navAfter()),
    );
  }
}
