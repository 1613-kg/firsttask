import 'package:firsttask/Day%203/AlertDialog/screens/homeAlertDailog.dart';
import 'package:firsttask/Day%203/DateTime/screens/homeDateTime.dart';
import 'package:firsttask/Day%203/Drop%20Down/screens/homeDropDown.dart';
import 'package:firsttask/Day%203/ProgressBar/screens/homeProgressBar.dart';
import 'package:firsttask/Day%203/RadioButtons/screens/homeRadioButton.dart';
import 'package:firsttask/Day%203/snackBar/screens/homeSnackBar.dart';
import 'package:firsttask/Day%203/switch/screens/homeSwitch.dart';
import 'package:firsttask/Day%204/Card%20and%20Stack/screens/homeCardStack.dart';
import 'package:firsttask/Day%204/GridView/screens/homeGridView.dart';
import 'package:firsttask/Day%204/ListWithLoadMore/screens/homeListLoadMore.dart';
import 'package:firsttask/Day%205/Image%20Slider/screens/homeImageSlider.dart';
import 'package:firsttask/Day%205/Rating%20Bar/screens/homeRatingBar.dart';
import 'package:firsttask/Day%205/Web%20View/screens/homeWebView.dart';
import 'package:firsttask/Day%206/Bottom%20Sheet/screens/homeBottomSheet.dart';
import 'package:firsttask/Day%206/Carousel%20Slider/screens/homeCarouselSlider.dart';
import 'package:firsttask/Day%206/Collapse/screens/homeCollapse.dart';
import 'package:firsttask/Day%206/Horizontal%20List/screens/homeHorizontalList.dart';
import 'package:firsttask/Day%206/Positioned/screens/homePositioned.dart';
import 'package:firsttask/Day%206/Splash%20Screen/screens/homeSplashScreen.dart';
import 'package:firsttask/Day%207/LoginAndRegisterPageUI/screens/registerScreen.dart';
import 'package:firsttask/Day1/screens/navigate.dart';
import 'package:firsttask/Day2/DataPassing/Screens/screenA.dart';
import 'package:firsttask/Day2/ImagePicker/screens/image_home_screen.dart';
import 'package:firsttask/Day2/ToastIntegration/Screens/toastScreen.dart';
import 'package:flutter/material.dart';

import 'Day 3/Check Box/screens/homeCheckBox.dart';
import 'Day 4/Graphs/BarGraphs/screens/homeBarGraphs.dart';
import 'Day 4/Graphs/LineGraphs/screens/homeLineGraphs.dart';
import 'Day 4/Graphs/Pie Graphs/screens/homePieGraphs.dart';
import 'Day 5/Range Bar/screens/homeRangeBar.dart';
import 'Day 5/Search View/screens/homeSearchView.dart';
import 'Day 5/SeekBar/screens/homeSeekBar.dart';
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
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      home: registerScreen(),
    );
  }
}
