import 'package:firsttask/Day1/screens/navigate.dart';
import 'package:firsttask/Day2/DataPassing/Screens/screenA.dart';
import 'package:flutter/material.dart';

import 'Day1/screens/bottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: screenA(text: "From Main"),
    );
  }
}
