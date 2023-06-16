import 'package:firsttask/screens/bottom.dart';
import 'package:firsttask/screens/top.dart';
import 'package:flutter/material.dart';

import 'drawer_screen.dart';

class Navigate extends StatelessWidget {
  Navigate({super.key});
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: DrawerScreen(),
      drawerEnableOpenDragGesture: true,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => topScreen()));
                        },
                        child: Text("Top Screen")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => bottomScreen()));
                        },
                        child: Text("Bottom Screen")),
                  ]),
            ),
            Positioned(
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _drawerKey.currentState!.openDrawer();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
