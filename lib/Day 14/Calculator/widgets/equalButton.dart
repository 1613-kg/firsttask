import 'package:flutter/material.dart';

class equalButton extends StatelessWidget {
  const equalButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 160,
      child: Text(
        "=",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 40),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue.withOpacity(0.3),
            Colors.pinkAccent.withOpacity(0.3)
          ]),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
