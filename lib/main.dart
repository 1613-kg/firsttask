import 'package:firsttask/Day%203/AlertDialog/screens/homeAlertDailog.dart';
import 'package:firsttask/Day%203/DateTime/screens/homeDateTime.dart';
import 'package:firsttask/Day%203/Drop%20Down/screens/homeDropDown.dart';
import 'package:firsttask/Day%203/ProgressBar/screens/homeProgressBar.dart';
import 'package:firsttask/Day%203/RadioButtons/screens/homeRadioButton.dart';
import 'package:firsttask/Day%203/snackBar/screens/homeSnackBar.dart';
import 'package:firsttask/Day%203/switch/screens/homeSwitch.dart';
import 'package:firsttask/Day1/screens/navigate.dart';
import 'package:firsttask/Day2/DataPassing/Screens/screenA.dart';
import 'package:firsttask/Day2/ImagePicker/screens/image_home_screen.dart';
import 'package:firsttask/Day2/ToastIntegration/Screens/toastScreen.dart';
import 'package:flutter/material.dart';

import 'Day 3/Check Box/screens/homeCheckBox.dart';
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
      home: homeDateTime(),
    );
  }
}
