import 'package:flutter/material.dart';

import '../theme/theme_manager.dart';

class homeChangeTheme extends StatefulWidget {
  const homeChangeTheme({super.key});

  @override
  State<homeChangeTheme> createState() => _homeChangeThemeState();
}

class _homeChangeThemeState extends State<homeChangeTheme> {
  ThemeManager _themeManager = ThemeManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.light,
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hello, Have a good day",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _themeManager.switchTheme();
                    });
                  },
                  icon: Icon(
                    Icons.sunny,
                    size: 100,
                  )),
            ]),
      ),
    );
  }
}
