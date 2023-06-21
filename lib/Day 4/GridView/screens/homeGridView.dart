import 'package:firsttask/Day%204/GridView/widgets/item.dart';
import 'package:flutter/material.dart';

class homeGridView extends StatelessWidget {
  const homeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Screen"),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 50,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
          itemBuilder: (context, index) {
            return Item(index: index);
          }),
    );
  }
}
