import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  String? email;
  homeScreen(this.email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Text(email!),
      ),
    );
  }
}
