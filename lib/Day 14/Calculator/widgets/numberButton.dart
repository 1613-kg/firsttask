import 'package:flutter/material.dart';

class numberButton extends StatelessWidget {
  String text;
  numberButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 45, color: Colors.black87),
        ),
        width: 65,
        height: 65,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
      ),
      elevation: 5,
    );
  }
}
