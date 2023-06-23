import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class homeCarouselSlider extends StatefulWidget {
  const homeCarouselSlider({super.key});

  @override
  State<homeCarouselSlider> createState() => _homeCarouselSliderState();
}

class _homeCarouselSliderState extends State<homeCarouselSlider> {
  List<Widget> item = [
    Container(
      decoration: BoxDecoration(color: Colors.amber),
    ),
  ];
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Slider Screen"),
      ),
      body: Column(children: [
        CarouselSlider(
          items: item,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ),
        TextButton(
          onPressed: () => buttonCarouselController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.linear),
          child: Text('→'),
        )
      ]),
    );
  }
}
