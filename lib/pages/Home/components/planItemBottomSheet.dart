import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:route_transitions/route_transitions.dart';

void showPlanItemDetail(BuildContext context) {
  // List<String> data = AppConfig.languageSupports.keys.toList();
  // showCupertinoModalBottomSheet(
  //   expand: true,
  //   context: context,
  //   backgroundColor: Colors.transparent,
  //   builder: (context) => ModalFit(),
  slideUpWidget(
    newPage: PlanItemDetail(),
    context: context,
  );
}

class PlanItemDetail extends StatelessWidget {
  const PlanItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: buildHeader(context),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
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
      ),
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [buildTitleInfo(), buildBarChart(context), buildStartBtn()],
      ),
    );
  }

  Widget buildStartBtn() {
    return Container();
  }

  Widget buildTitleInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '背 & 二头',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              '上一次训练',
              style: TextStyle(color: Color(0xff929bc2), fontSize: 12),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '12-12',
              style: TextStyle(color: Color(0xff929bc2), fontSize: 12),
            )
          ],
        ),
      ],
    );
  }

  Widget buildBarChart(BuildContext context) {
    return SizedBox(
        width: double.infinity, // <-- match_parent
        height: double.infinity, // <-- match-parent
        child: ElevatedButton(
          onPressed: () {},
          child: Text('1'),
        ));
  }
}
