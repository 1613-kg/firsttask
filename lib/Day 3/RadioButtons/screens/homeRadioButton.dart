import 'package:flutter/material.dart';

class homeRadioButton extends StatefulWidget {
  const homeRadioButton({super.key});

  @override
  State<homeRadioButton> createState() => _homeRadioButtonState();
}

class _homeRadioButtonState extends State<homeRadioButton> {
  int _value = 0;
  int _value2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Radio Button Screen",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.white10,
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Radio Button",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val!;
                                });
                              }),
                          Text("Radio 1"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val!;
                                });
                              }),
                          Text("Radio 2"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 3,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val!;
                                });
                              }),
                          Text("Radio 3"),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              /// Radio List Tile
              SizedBox(
                height: 50,
              ),

              Column(
                children: [
                  Text(
                    "Radio ListTile Button",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      RadioListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Text("Radio ListTile Button 1"),
                          subtitle: Text(
                            "Difference between Radio and Radio ListTile",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          value: 1,
                          groupValue: _value2,
                          onChanged: (val) {
                            setState(() {
                              _value2 = val!;
                            });
                          }),
                      RadioListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Text("Radio ListTile Button 2"),
                          subtitle: Text(
                            "Difference between Radio and Radio ListTile",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          value: 2,
                          groupValue: _value2,
                          onChanged: (val) {
                            setState(() {
                              _value2 = val!;
                            });
                          }),
                      RadioListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Text("Radio ListTile Button 3"),
                          subtitle: Text(
                            "Difference between Radio and Radio ListTile",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          value: 3,
                          groupValue: _value2,
                          onChanged: (val) {
                            setState(() {
                              _value2 = val!;
                            });
                          }),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
