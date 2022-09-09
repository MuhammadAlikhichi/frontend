import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  void startCreatingDemoData() async {
    for (int i = 0; i < 6; i++) {
      if (i == 0) continue;
      await Future.delayed((const Duration(seconds: 1))).then(
        (value) {
          Random random = Random();
          flspots.add(
            FlSpot(
              double.parse(i.toString()),
              random.nextDouble() * 5,
            ),
          );
          setState(() {
            setChartData();
          });
        },
      );
    }
  }

  late LineChartData data;
  void setChartData() {
    data = LineChartData(
        gridData: FlGridData(
          show: true,
          // drawVerticalLine: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
          // getDrawingVerticalLine: (value) {
          //   return FlLine(
          //     color: Color(0xff37434d),
          //     strokeWidth: 1,
          //   );
          // },
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: SideTitles(
            showTitles: true,
            reservedSize: 22,
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return 'JUL22';
                case 2:
                  return 'JUL23';
                case 3:
                  return 'JUL24';
                case 4:
                  return 'JUL25';
                case 5:
                  return 'JUL26';
              }
              return '';
            },
            getTextStyles: (value) => const TextStyle(
              color: Color(0xff67727d),
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            margin: 8,
          ),
          leftTitles: SideTitles(
            showTitles: true,
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return '\$0';
                case 2:
                  return '\$150';
                case 3:
                  return '\$175';
                case 4:
                  return '\$200';
                case 5:
                  return '\$225';
              }
              return '';
            },
            getTextStyles: (value) => const TextStyle(
              color: Color(0xff67727d),
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            reservedSize: 28,
            margin: 12,
          ),
        ),
        borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1),
        ),
        minX: 0,
        maxX: 5,
        minY: 0,
        maxY: 5,
        lineBarsData: [
          LineChartBarData(
              spots: flspots,
              isCurved: true,
              colors: gradientColors,
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList(),
              )),
        ]);
  }

  List<FlSpot> flspots = [
    FlSpot(0, 0),
  ];

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  void initState() {
    super.initState();
    setChartData();
    startCreatingDemoData();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: LineChart(data),
    );
  }
}
