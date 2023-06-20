import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class homeDateTime extends StatefulWidget {
  homeDateTime({super.key});

  @override
  State<homeDateTime> createState() => _homeDateTimeState();
}

class _homeDateTimeState extends State<homeDateTime> {
  var now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DateTime Screen")),
      body: Center(
        child: Column(
          children: [
            Text(
              "Different Date Formats",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              DateFormat.jms().format(DateTime.now()),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              DateFormat('dd-MM-yyyy').format(now),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              DateFormat('dd-MM-yy').format(now),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              DateFormat('dd').format(now),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              DateFormat('MM-yyyy').format(now),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              DateFormat('kk:mm').format(now),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              DateFormat('kk').format(now),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            StreamBuilder(
                stream: Stream.periodic(const Duration(seconds: 1)),
                builder: (context, snapshot) {
                  return Text(
                    DateFormat('MM/dd/yyyy hh:mm:ss').format(DateTime.now()),
                    style: TextStyle(fontSize: 20),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
