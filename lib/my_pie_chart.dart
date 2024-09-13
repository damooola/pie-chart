import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.grey[100],
          height: 800,
          width: double.infinity,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Weekly Spend",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            Text(
              "₦30,000",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
        // pie chart
        PieChart(
          swapAnimationCurve: Curves.easeInOut,
          swapAnimationDuration: const Duration(milliseconds: 850),
          PieChartData(centerSpaceRadius: 120, sections: [
            PieChartSectionData(
                value: 5000, title: "Sunday", color: Colors.cyanAccent),
            PieChartSectionData(
                value: 2000, title: "Monday", color: Colors.greenAccent),
            PieChartSectionData(
                value: 6000, title: "Tuesday", color: Colors.blueAccent),
            PieChartSectionData(
                value: 4000, title: "Wednesday", color: Colors.redAccent),
            PieChartSectionData(
                value: 3000, title: "Thursday", color: Colors.limeAccent),
            PieChartSectionData(
                value: 6000, title: "Friday", color: Colors.tealAccent),
            PieChartSectionData(
                value: 4000, title: "Saturday", color: Colors.amberAccent),
          ]),
        ),
      ],
    );
  }
}
