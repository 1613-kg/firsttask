import 'package:firsttask/Day2/DataPassing/Screens/screenB.dart';
import 'package:flutter/material.dart';

class screenA extends StatelessWidget {
  String text;
  screenA({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Screen A"),
            Text(text),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              screenB(text: "Data From Screen A")));
                },
                child: Text("Go to screen B")),
          ],
        ),
      ),
    );
  }
}
