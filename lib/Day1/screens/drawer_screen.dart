import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              drawerWidget(
                myIcon: Icons.home,
                labelText: "Home",
              ),
              SizedBox(
                height: 30,
              ),
              drawerWidget(
                myIcon: Icons.settings,
                labelText: "Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
