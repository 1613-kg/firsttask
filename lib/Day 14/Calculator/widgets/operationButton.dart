import 'package:flutter/material.dart';

class operationButton extends StatelessWidget {
  String text;
  operationButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30, color: Colors.black),
      ),
      width: 65,
      height: 65,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue.withOpacity(0.3),
            Colors.pinkAccent.withOpacity(0.3)
          ]),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
