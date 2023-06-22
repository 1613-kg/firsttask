import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class homeImageSlider extends StatefulWidget {
  const homeImageSlider({super.key});

  @override
  State<homeImageSlider> createState() => _homeImageSliderState();
}

class _homeImageSliderState extends State<homeImageSlider> {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];
  int activePage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Slider Screen"),
      ),
      body: PageView.builder(
          itemCount: images.length,
          pageSnapping: true,
          itemBuilder: ((context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Image.network(images[index]),
            );
          })),
    );
  }
}
