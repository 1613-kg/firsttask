import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firsttask/Day%2010/Authentication/screens/loginScreenAuth.dart';
import 'package:firsttask/Day%2010/Push%20Notification/services/firebase_mssg.dart';
import 'package:firsttask/Day%2011/Firebase%20Storage/screens/inputFromUser.dart';
import 'package:firsttask/Day%2013/Theme%20change/screens/homeChangeTheme.dart';
import 'package:firsttask/Day%2013/Theme%20change/theme/theme_constants.dart';
import 'package:firsttask/Day%2013/Theme%20change/theme/theme_manager.dart';
import 'package:firsttask/Day%2014/Calculator/screens/homeCalculator.dart';
import 'package:firsttask/Day%2015/Api%20Calling/screens/homeData.dart';
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
import 'package:firsttask/Day%208/Live%20Location/screens/getLocation.dart';
import 'package:firsttask/Day%209/Location%20on%20Map/screens/getLocationMap.dart';
import 'package:firsttask/Day1/screens/navigate.dart';
import 'package:firsttask/Day2/DataPassing/Screens/screenA.dart';
import 'package:firsttask/Day2/ImagePicker/screens/image_home_screen.dart';
import 'package:firsttask/Day2/ToastIntegration/Screens/toastScreen.dart';
import 'package:firsttask/translations/codegen_loader.g.dart';
import 'package:flutter/material.dart';

import 'Day 10/Push Notification/screens/homeNotification.dart';
import 'Day 12/Language Converter/screens/changeButtonScreen.dart';
import 'Day 3/Check Box/screens/homeCheckBox.dart';
import 'Day 4/Graphs/BarGraphs/screens/homeBarGraphs.dart';
import 'Day 4/Graphs/LineGraphs/screens/homeLineGraphs.dart';
import 'Day 4/Graphs/Pie Graphs/screens/homePieGraphs.dart';
import 'Day 5/Range Bar/screens/homeRangeBar.dart';
import 'Day 5/Search View/screens/homeSearchView.dart';
import 'Day 5/SeekBar/screens/homeSeekBar.dart';
import 'Day1/screens/bottom.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseMessage().initNotification();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('hi')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        assetLoader: CodegenLoader(),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ThemeManager _themeManager = ThemeManager();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      //   fontFamily: 'Montserrat',
      // ),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: homeData(),
    );
  }
}
