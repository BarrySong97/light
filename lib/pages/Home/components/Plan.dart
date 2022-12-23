import 'package:flutter/material.dart';

class Plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // margin: EdgeInsets.only(bottom: 12, right: 12),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      // height: 60,
      decoration: BoxDecoration(
          // color: Colors.white,
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.blue[300]!,
              Colors.blue[600]!,
              Colors.blue[700]!,
              Colors.blue[800]!,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildName(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildPeriodInfo(),
              Column(
                children: [
                  Text(
                    '2/20',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '进度',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildPercent() {
    return Container(
      child: Text('进度 20%'),
    );
  }

  Widget buildName() {
    return Text(
      '四分化训练',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w800, fontSize: 14),
    );
  }

  Widget buildPeriodInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Text(
            //   '周期:',
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 14),
            // ),
            // SizedBox(
            //   width: 6,
            // ),
            Text(
              '练',
              style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '4',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '休',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '2',
              style: TextStyle(fontSize: 13, color: Colors.white),
            )
          ],
        ),
        Row(
          children: [
            Text(
              '共',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '120',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '天',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        // Row(
        //   children: [
        //     // Text(
        //     //   '训练:',
        //     //   style: TextStyle(
        //     //       color: Colors.white,
        //     //       fontWeight: FontWeight.bold,
        //     //       fontSize: 14),
        //     // ),
        //     // SizedBox(
        //     //   width: 6,
        //     // ),
        //     Text(
        //       '20',
        //       style: TextStyle(fontSize: 13, color: Colors.white),
        //     ),
        //     SizedBox(
        //       width: 2,
        //     ),
        //     Text(
        //       '轮',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     )
        //   ],
        // )
      ],
    );
  }
}
