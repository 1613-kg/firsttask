import 'package:flutter/material.dart';

class drawerWidget extends StatelessWidget {
  drawerWidget({super.key, required this.myIcon, required this.labelText});
  IconData myIcon;
  String labelText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          myIcon,
          color: Colors.grey,
          size: 40,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          labelText,
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ],
    );
  }
}
