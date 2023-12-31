import 'package:flutter/material.dart';

class customToast extends StatelessWidget {
  const customToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.grey,
      ),
      child: const Text(
        "This is Toast with context",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
