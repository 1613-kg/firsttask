import 'package:flutter/material.dart';

class homeTweenSequenceAnimation extends StatefulWidget {
  const homeTweenSequenceAnimation({super.key});

  @override
  State<homeTweenSequenceAnimation> createState() =>
      _homeTweenSequenceAnimationState();
}

class _homeTweenSequenceAnimationState extends State<homeTweenSequenceAnimation>
    with SingleTickerProviderStateMixin {
  bool isFav = false;
  late AnimationController _controller;
  late Animation<Color?> _colorController;
  late Animation<double> __sizeController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _colorController =
        ColorTween(begin: Colors.grey, end: Colors.red).animate(_controller);

    __sizeController = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
            tween: Tween<double>(begin: 30, end: 50), weight: 100),
        TweenSequenceItem<double>(
            tween: Tween<double>(begin: 50, end: 30), weight: 100),
      ],
    ).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Sequence"),
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context, _) {
              return IconButton(
                icon: Icon(
                  Icons.favorite,
                  size: __sizeController.value,
                  color: _colorController.value,
                ),
                onPressed: () {
                  isFav ? _controller.reverse() : _controller.forward();
                },
              );
            }),
      ),
    );
  }
}
