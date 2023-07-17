import 'package:flutter/material.dart';

class homeAnimationScreen extends StatefulWidget {
  const homeAnimationScreen({super.key});

  @override
  State<homeAnimationScreen> createState() => _homeAnimationScreenState();
}

class _homeAnimationScreenState extends State<homeAnimationScreen> {
  double _margin = 20;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Screen"),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        width: _width,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _margin = 50;
                  });
                },
                child: Text("Change Margin")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _width = 430;
                  });
                },
                child: Text("Change Width")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _color = Colors.green;
                  });
                },
                child: Text("Change Color")),
          ],
        ),
        margin: EdgeInsets.all(_margin),
        color: _color,
      ),
    );
  }
}
