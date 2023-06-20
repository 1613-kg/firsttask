import 'package:flutter/material.dart';

class homeProgressBar extends StatelessWidget {
  const homeProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Bar Screen"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Linear Progress Bar"),
        SizedBox(
          height: 20,
        ),
        LinearProgressIndicator(),
        SizedBox(
          height: 50,
        ),
        Text("Circular Progress Bar"),
        SizedBox(
          height: 20,
        ),
        CircularProgressIndicator(),
      ]),
    );
  }
}
