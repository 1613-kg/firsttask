import 'package:flutter/material.dart';

class homeHorizantalList extends StatefulWidget {
  const homeHorizantalList({super.key});

  @override
  State<homeHorizantalList> createState() => _homeHorizantalListState();
}

class _homeHorizantalListState extends State<homeHorizantalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal List Screen"),
      ),
      body: ListView.builder(
          itemCount: 50,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 10,
              width: 50,
              decoration: BoxDecoration(
                  color: (index % 2 == 0) ? Colors.amber : Colors.blueGrey),
            );
          }),
    );
  }
}
