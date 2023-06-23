import 'package:flutter/material.dart';

class navAfter extends StatelessWidget {
  const navAfter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("After Splash Screen"),
      ),
      body: Center(
        child: Text(
          "Splash Done!",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
