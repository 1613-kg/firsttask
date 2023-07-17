import 'package:firsttask/Day%2016/Deep%20Links/services/dynamicLinks.dart';
import 'package:flutter/material.dart';

class homeScreenLinks extends StatefulWidget {
  const homeScreenLinks({super.key});

  @override
  State<homeScreenLinks> createState() => _homeScreenLinksState();
}

class _homeScreenLinksState extends State<homeScreenLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Link Screen"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Redirect Screen"),
          IconButton(
              onPressed: () {
                FirebaseDynamicLinks.createDynamicLink(false);
              },
              icon: Icon(Icons.share)),
        ],
      )),
    );
  }
}
