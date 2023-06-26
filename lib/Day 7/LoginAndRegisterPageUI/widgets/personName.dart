import 'package:flutter/material.dart';

class personName extends StatelessWidget {
  const personName({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Icon(Icons.person),
          Column(
            children: [
              Text("Full Name"),
              Text("Jhone Williams"),
            ],
          ),
        ],
      ),
    );
  }
}
