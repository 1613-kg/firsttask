import 'package:flutter/material.dart';

class homeCheckBox extends StatefulWidget {
  const homeCheckBox({super.key});

  @override
  State<homeCheckBox> createState() => _homeCheckBoxState();
}

class _homeCheckBoxState extends State<homeCheckBox> {
  @override
  bool _value = false;
  bool _value2 = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox Screen")),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "CheckBox",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: _value,
                          onChanged: (bool? val) {
                            setState(() {
                              _value = val!;
                            });
                          }),
                      Text("Radio 1"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Text(
                    "CheckBox ListTile",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CheckboxListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text("Radio ListTile Button 1"),
                      subtitle: Text(
                        "Difference between Radio and Radio ListTile",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      value: _value2,
                      onChanged: (val) {
                        setState(() {
                          _value2 = val!;
                        });
                      }),
                ],
              ),
            ],
          )),
    );
  }
}
