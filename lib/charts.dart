import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chaarts extends StatelessWidget {
  const Chaarts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: SfCircularChart(
              legend: Legend(
                isVisible: true
              ),
              series: [
                PieSeries(
                  dataSource: [
                    ChartData('covid -ve', 15),
                    ChartData('covid +ve', 60),
                    ChartData('covid vaccinated', 15),
                  ],
                  xValueMapper: (item, index) => item.x,
                  yValueMapper: (item, index) => item.y,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y,
  );
  final String x;
  final double y;
  // final Color color;
}
