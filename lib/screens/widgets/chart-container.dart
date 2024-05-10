import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  const ChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(16),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Over All Performance",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: LineChart(
                //duration: Duration(milliseconds: 250),
                sampleData1),
          ),
        ],
      ),
    );
  }
}

LineChartData get sampleData1 => LineChartData(
      gridData: gridData,
      titlesData: titleData,
      borderData: boarderData,
      lineBarsData: lineBarsData,
      minX: 0,
      maxX: 16,
      minY: 0,
      maxY: 4,
    );

List<LineChartBarData> get lineBarsData =>
    [lineChartBarData1, lineChartBarData2];

FlTitlesData get titleData => FlTitlesData(
    bottomTitles: AxisTitles(
      sideTitles: bottomTitles(),
    ),
    rightTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    leftTitles: AxisTitles(
      sideTitles: leftTitles(),
    ));

Widget leftTitlesWidget(double value, TitleMeta meta) {
  const style =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey);
  String text;
  switch (value.toInt()) {
    case 1:
      text = '10';
      break;
    case 2:
      text = '20';
      break;
    case 3:
      text = '30';
      break;
    case 4:
      text = '40';
      break;
    case 5:
      text = '50';
      break;
    default:
      return Container();
  }
  return Text(
    text,
    style: style,
    textAlign: TextAlign.center,
  );
}

SideTitles leftTitles() => SideTitles(
    getTitlesWidget: leftTitlesWidget,
    showTitles: true,
    interval: 1,
    reservedSize: 40);

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey);
  Widget text;
  switch (value.toInt()) {
    case 1:
      text = Text(
        '2015',
        style: style,
      );
      break;
    case 3:
      text = Text(
        '2016',
        style: style,
      );
      break;
    case 5:
      text = Text(
        '2017',
        style: style,
      );
      break;
    case 7:
      text = Text(
        '2018',
        style: style,
      );
      break;
    case 9:
      text = Text(
        '2019',
        style: style,
      );
      break;
    case 11:
      text = Text(
        '2020',
        style: style,
      );
      break;

    default:
      text = Text(' ');
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}

SideTitles bottomTitles() => SideTitles(
      showTitles: true,
      interval: 1,
      reservedSize: 32,
      getTitlesWidget: bottomTitleWidgets,
    );

FlGridData get gridData => FlGridData(show: false);

FlBorderData get boarderData => FlBorderData(
    show: true,
    border: Border(
      bottom: BorderSide(color: Colors.grey, width: 4),
      left: BorderSide(color: Colors.grey),
      right: BorderSide(color: Colors.transparent),
      top: BorderSide(color: Colors.transparent),
    ));

LineChartBarData get lineChartBarData1 => LineChartBarData(
        isCurved: true,
        color: Colors.purple,
        barWidth: 6,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.6),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.5),
          FlSpot(13, 1.6),
        ]);

LineChartBarData get lineChartBarData2 => LineChartBarData(
        isCurved: true,
        color: Colors.redAccent,
        barWidth: 6,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: [
          FlSpot(1, 2),
          FlSpot(3, 1),
          FlSpot(5, 3.4),
          FlSpot(7, 2.3),
          FlSpot(10, 2.5),
          FlSpot(12, 3),
          FlSpot(13, 4),
        ]);
