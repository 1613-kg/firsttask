import 'package:firsttask/Day2/ToastIntegration/widgets/customToast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class toastScreen extends StatefulWidget {
  toastScreen({super.key});

  @override
  State<toastScreen> createState() => _toastScreenState();
}

class _toastScreenState extends State<toastScreen> {
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

  FToast? fToast;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fToast = FToast();
    fToast?.init(context);
  }

  void _showToastWithContext() {
    fToast?.showToast(
      child: customToast(),
      toastDuration: Duration(seconds: 3),
    );
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
                child: Text("Show Toast With No Context")),
            ElevatedButton(
                onPressed: () {
                  _showToastWithContext();
                },
                child: Text("Show Toast With Context")),
          ],
        ),
      ),
    );
  }
}
