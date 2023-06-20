import 'package:flutter/material.dart';

class homeSwitch extends StatefulWidget {
  const homeSwitch({super.key});

  @override
  State<homeSwitch> createState() => _homeSwitchState();
}

class _homeSwitchState extends State<homeSwitch> {
  @override
  bool _value1 = false;
  bool _value2 = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Normal Switch"),
              Switch(
                  value: _value1,
                  onChanged: (val) {
                    setState(() {
                      _value1 = val;
                    });
                  }),
            ],
          ),
          SwitchListTile(
              contentPadding: EdgeInsets.all(5),
              title: Text("Switch ListTile"),
              subtitle: Text(
                "Can Have this too",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              value: _value2,
              onChanged: (val) {
                setState(() {
                  _value2 = val;
                });
              }),
        ],
      ),
    );
  }
}
