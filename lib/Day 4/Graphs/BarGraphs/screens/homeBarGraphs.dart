import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:firsttask/Day 4/Graphs/BarGraphs/models/bar_model.dart';

class homeBarGraphs extends StatefulWidget {
  const homeBarGraphs({super.key});

  @override
  State<homeBarGraphs> createState() => _homeBarGraphsState();
}

class _homeBarGraphsState extends State<homeBarGraphs> {
  late List<ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    // TODO: implement initState
    data = [
      ChartData('CHN', 12),
      ChartData('GER', 15),
      ChartData('RUS', 30),
      ChartData('BRZ', 6.4),
      ChartData('IND', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bar Chart Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
              tooltipBehavior: _tooltip,
              series: <ChartSeries<ChartData, String>>[
                BarSeries<ChartData, String>(
                    dataSource: data,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    name: 'Gold',
                    color: Color.fromRGBO(8, 142, 255, 1))
              ]),
        ));
  }
}
