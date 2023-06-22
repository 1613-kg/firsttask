import 'package:flutter/material.dart';

class homeRangeBar extends StatefulWidget {
  const homeRangeBar({super.key});

  @override
  State<homeRangeBar> createState() => _homeRangeBarState();
}

class _homeRangeBarState extends State<homeRangeBar> {
  late RangeValues _currentValues;

  @override
  void initState() {
    // TODO: implement initState
    _currentValues = RangeValues(10, 10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Bar Screen"),
      ),
      body: Center(
        child: RangeSlider(
            values: _currentValues,
            max: 1000,
            min: 10,
            divisions: 100,
            labels: RangeLabels(_currentValues.start.round().toString(),
                _currentValues.end.round().toString()),
            onChanged: (RangeValues value) {
              setState(() {
                _currentValues = value;
              });
            }),
      ),
    );
  }
}
