import 'package:flutter/material.dart';

class homePositioned extends StatelessWidget {
  const homePositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Positioned Screen"),
        ),
        body: Stack(
          children: [
            Positioned(
                bottom: 20,
                right: 20,
                child: Text(
                  "Right",
                  style: TextStyle(fontSize: 50, color: Colors.black),
                )),
            Positioned(
                top: 20,
                left: 20,
                child: Text(
                  "Left",
                  style: TextStyle(fontSize: 50, color: Colors.black),
                )),
          ],
        ));
  }
}
