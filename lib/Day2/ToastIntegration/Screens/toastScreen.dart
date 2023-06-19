import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widget/customToast.dart';

class toastScreen extends StatefulWidget {
  toastScreen({super.key});

  @override
  State<toastScreen> createState() => _toastScreenState();
}

class _toastScreenState extends State<toastScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  void _showToastWithNoContext() {
    Fluttertoast.showToast(
        msg: "This is Toast with no context",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  late FToast fToast;

  @override
  void _showToastWithContext(BuildContext con) {
    void initState() {
      // TODO: implement initState
      fToast = FToast();
      super.initState();
      fToast.init(navigatorKey.currentContext!);
    }

    fToast.showToast(child: customToast());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _showToastWithNoContext();
                },
                child: Text("Toast with no context")),
            ElevatedButton(
                onPressed: () {
                  _showToastWithContext(context);
                },
                child: Text("Toast with context")),
          ],
        ),
      ),
    );
  }
}
