import 'package:flutter/material.dart';

class homeCollapse extends StatelessWidget {
  const homeCollapse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Collapse Screen"),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text("Expand"),
          subtitle: Text("This is Expand And Collapse Widget"),
          children: [
            Text("Expand and Collapse"),
            Text("Expand and Collapse"),
            Text("Expand and Collapse"),
            Text("Expand and Collapse"),
            Text("Expand and Collapse"),
            Text("Expand and Collapse"),
          ],
        ),
      ),
    );
  }
}
