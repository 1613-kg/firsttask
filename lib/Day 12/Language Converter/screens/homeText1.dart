import 'package:easy_localization/easy_localization.dart';
import 'package:firsttask/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';

class homeText1 extends StatelessWidget {
  const homeText1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text 1"),
      ),
      body: Center(
        child: Text(LocaleKeys.title.tr()),
      ),
    );
  }
}
