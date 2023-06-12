import 'package:coding_education_mobile/views/contains/style.dart';
import 'package:coding_education_mobile/views/screens/progress/components/chart/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarChart extends StatelessWidget {
  final List weeklySummary;
  const MyBarChart({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tueAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thurAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );
    myBarData.initializedBarData();
    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        titlesData: FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        gridData: FlGridData(
          drawVerticalLine: false,
          show: true,
        ),
        barGroups: myBarData.barData
            .map(
              (e) => BarChartGroupData(
                x: e.x,
                barRods: [
                  BarChartRodData(
                      toY: e.y,
                      color: kGreenColor,
                      width: 20,
                      borderRadius: BorderRadius.circular(4)),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
