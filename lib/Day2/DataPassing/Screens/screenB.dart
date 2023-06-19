import 'package:firsttask/Day2/DataPassing/Screens/screenA.dart';
import 'package:flutter/material.dart';

class screenB extends StatelessWidget {
  String text;
  screenB({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Screen B"),
            Text(text),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              screenA(text: "Data From Screen B")));
                },
                child: Text("Go to screen A")),
          ],
        ),
      ),
    );
  }
}
