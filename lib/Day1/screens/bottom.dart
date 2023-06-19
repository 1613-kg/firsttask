import 'package:flutter/material.dart';

class bottomScreen extends StatefulWidget {
  const bottomScreen({super.key});

  @override
  State<bottomScreen> createState() => _bottomScreenState();
}

class _bottomScreenState extends State<bottomScreen> {
  int currInd = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Screen"),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black87,
        onTap: (index) {
          setState(() {
            currInd = index;
          });
        },
        currentIndex: currInd,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 25),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 25), label: 'Like'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 25), label: 'Profile'),
        ],
      ),
      body: Center(
        child: pageIndex[currInd],
      ),
    );
  }
}

var pageIndex = [
  Text("Home"),
  Text("Like"),
  Text("Profile"),
];
