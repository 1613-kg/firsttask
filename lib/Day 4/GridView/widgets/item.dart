import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  int index;
  Item({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(color: (index % 2 == 0) ? Colors.amber : Colors.blue),
      child: Text(
        "$index",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
