import 'package:easy_localization/easy_localization.dart';
import 'package:firsttask/Day%2012/Language%20Converter/screens/homeText1.dart';
import 'package:firsttask/Day%2012/Language%20Converter/screens/homeText2.dart';
import 'package:flutter/material.dart';

class changeButtonScreen extends StatelessWidget {
  const changeButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Screen"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text("Change Language"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                        children: [
                          SimpleDialogOption(
                            onPressed: () async {
                              await context.setLocale(Locale('en'));
                              Navigator.pop(context);
                            },
                            child: Text("English"),
                          ),
                          SimpleDialogOption(
                            onPressed: () async {
                              await context.setLocale(Locale('hi'));
                              Navigator.pop(context);
                            },
                            child: Text("Hindi"),
                          ),
                        ],
                      ));
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homeText1()));
              },
              child: Text("Go to text1")),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homeText2()));
              },
              child: Text("Go to text2")),
        ],
      ),
    );
  }
}
