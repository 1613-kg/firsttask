import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/line_model.dart';

class homeLineGraphs extends StatelessWidget {
  const homeLineGraphs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime(2010), 35),
      SalesData(DateTime(2012), 28),
      SalesData(DateTime(2016), 34),
      SalesData(DateTime(2015), 32),
      SalesData(DateTime(2014), 40)
    ];
    return Scaffold(
        appBar: AppBar(title: Text("Line Graph Screen")),
        body: Center(
            child: Container(
                margin: EdgeInsets.all(15),
                child: SfCartesianChart(
                    primaryXAxis: DateTimeAxis(),
                    series: <ChartSeries>[
                      LineSeries<SalesData, DateTime>(
                          dataSource: chartData,
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales)
                    ]))));
  }
}
