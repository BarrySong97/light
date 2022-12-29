import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:light/pages/Home/components/planItemBottomSheet.dart';

class PlanItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        showPlanItemDetail(context);
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        // width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.blue[800]!,
                Colors.blue[700]!,
                Colors.blue[600]!,
                Colors.blue[400]!,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            buildInfo(),
            buildChart(),
            Spacer(),
            buildData(),
          ],
        ),
      ),
    );
  }

  Widget buildInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '0 次完成',
          style: TextStyle(fontSize: 10, color: Colors.white),
        ),
        // SizedBox(
        //   height: 12,
        // ),
        Text(
          '测试计划',
          style: TextStyle(fontSize: 14, color: Colors.white),
        )
      ],
    );
  }

  Widget buildChart() {
    return Container(
      width: 100,
      height: 40,
      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: BarChartSample4(),
    );
  }

  Widget buildData() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        buildDetialInfoItem('8', '动作'),
        SizedBox(
          width: 16,
        ),
        GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.all(6),
                child: Icon(Icons.play_arrow, color: Colors.white))),
      ],
    );
  }

  Widget buildDetialInfoItem(String title, String data) {
    return Column(
      children: [
        // Spacer(),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        Text(
          data,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class BarChartSample4 extends StatefulWidget {
  const BarChartSample4({super.key});

  @override
  State<StatefulWidget> createState() => BarChartSample4State();
}

class BarChartSample4State extends State<BarChartSample4> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Color(0xff939393), fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Apr';
        break;
      case 1:
        text = 'May';
        break;
      case 2:
        text = 'Jun';
        break;
      case 3:
        text = 'Jul';
        break;
      case 4:
        text = 'Aug';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      color: Color(
        0xff939393,
      ),
      fontSize: 10,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.center,
        barTouchData: BarTouchData(
          enabled: false,
        ),
        titlesData: FlTitlesData(
          show: false,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 28,
              getTitlesWidget: bottomTitles,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
              reservedSize: 40,
              getTitlesWidget: leftTitles,
            ),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(
          show: false,
        ),
        groupsSpace: 0,
        barGroups: getData(),
      ),
    );
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
              toY: 180,
              width: 10,
              borderRadius: BorderRadius.zero,
              color: Colors.blue[200]),
        ],
      ),
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
              toY: 150,
              width: 10,
              borderRadius: BorderRadius.zero,
              color: Colors.blue[400]),
        ],
      ),
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
              toY: 180,
              width: 10,
              borderRadius: BorderRadius.zero,
              color: Colors.blue[200]),
        ],
      ),
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
            toY: 160,
            width: 10,
            borderRadius: BorderRadius.zero,
            color: Colors.blue[400],
          ),
        ],
      ),
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
              toY: 180,
              width: 10,
              borderRadius: BorderRadius.zero,
              color: Colors.blue[200]),
        ],
      ),
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
              toY: 150,
              width: 10,
              borderRadius: BorderRadius.zero,
              color: Colors.blue[400]),
        ],
      ),
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
              toY: 180,
              borderRadius: BorderRadius.zero,
              width: 10,
              color: Colors.blue[200]),
        ],
      ),
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
              toY: 150,
              width: 10,
              borderRadius: BorderRadius.zero,
              color: Colors.blue[400]),
        ],
      ),
    ];
  }
}
