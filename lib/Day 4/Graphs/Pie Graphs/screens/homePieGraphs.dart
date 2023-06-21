import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/pie_model.dart';

class homePieGraphs extends StatefulWidget {
  const homePieGraphs({super.key});

  @override
  State<homePieGraphs> createState() => _homePieGraphsState();
}

class _homePieGraphsState extends State<homePieGraphs> {
  @override
  late List<ChartData> data;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    // TODO: implement initState
    data = [
      ChartData('Kush', 25, Colors.black),
      ChartData('kushagra', 38, Colors.green),
      ChartData('Garg', 15, Colors.blue),
      ChartData('Others', 52, Colors.amber),
    ];
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                margin: EdgeInsets.all(20),
                child: SfCircularChart(
                    tooltipBehavior: _tooltipBehavior,
                    legend: Legend(
                        isVisible: true,
                        overflowMode: LegendItemOverflowMode.wrap),
                    series: <CircularSeries>[
                      PieSeries<ChartData, String>(
                          radius: '100%',
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                          dataSource: data,
                          pointColorMapper: (ChartData data, _) => data.color,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y),
                    ]))));
  }
}
