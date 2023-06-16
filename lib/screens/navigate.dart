import 'package:firsttask/screens/bottom.dart';
import 'package:firsttask/screens/top.dart';
import 'package:flutter/material.dart';

class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => topScreen()));
              },
              child: Text("Top Screen")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => bottomScreen()));
              },
              child: Text("Bottom Screen")),
        ]),
      ),
    );
  }
}
