import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';

class homeSeekBar extends StatefulWidget {
  const homeSeekBar({super.key});

  @override
  State<homeSeekBar> createState() => _homeSeekBarState();
}

class _homeSeekBarState extends State<homeSeekBar> {
  double _currentValue = 20;
  double _progress = 0;
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SeekBar Screen"),
      ),
      body: Container(
          child: Column(
        children: [
          Column(
            children: [
              Text("Linear SeekBar"),
              Slider(
                  min: 10,
                  max: 100,
                  divisions: 100,
                  activeColor: Colors.green,
                  inactiveColor: Colors.grey,
                  label: _currentValue.round().toString(),
                  value: _currentValue,
                  onChanged: (double value) {
                    setState(() {
                      _currentValue = value;
                    });
                  }),
              Text(
                '$_currentValue',
                style: TextStyle(fontSize: 22),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CircularSeekBar(
            width: double.infinity,
            height: 250,
            progress: _progress,
            barWidth: 8,
            trackColor: Colors.black,
            startAngle: 45,
            sweepAngle: 270,
            strokeCap: StrokeCap.butt,
            progressGradientColors: const [
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.indigo,
              Colors.purple
            ],
            innerThumbRadius: 5,
            innerThumbStrokeWidth: 3,
            innerThumbColor: Colors.white,
            outerThumbRadius: 5,
            outerThumbStrokeWidth: 10,
            outerThumbColor: Colors.blueAccent,
            dashWidth: 1,
            dashGap: 2,
            animation: true,
            curves: Curves.bounceOut,
            valueNotifier: _valueNotifier,
            child: Center(
              child: ValueListenableBuilder(
                  valueListenable: _valueNotifier,
                  builder: (_, double value, __) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('${value.round()}'),
                          Text('progress'),
                        ],
                      )),
            ),
          )
        ],
      )),
    );
  }
}
