import 'package:flutter/material.dart';

class topScreen extends StatelessWidget {
  const topScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Top Screen"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: "Like",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Profile",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Icon(Icons.home),
          ),
        ]),
      ),
    );
  }
}
