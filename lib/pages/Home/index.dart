import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                buildHeader(),
                SizedBox(
                  height: 24,
                ),
                buildInfo(),
                buildLasTrainingList()
              ],
            )));
  }

  Widget buildHeader() {
    return Row(
      children: [
        buildAvtar(),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '你好 Barry!',
              style: TextStyle(color: Color(0xffa6a6a6), fontSize: 13),
            ),
            SizedBox(height: 6),
            Text('周三, 08, 六月',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
          ],
        )
      ],
    );
  }

  Widget buildAvtar() {
    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          image: const DecorationImage(
            image: AssetImage(
              'assets/img/defaultAvatar.jpg',
            ),
            fit: BoxFit.cover,
          )),
    );
  }

  Widget buildInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildInfoItem(),
          buildInfoItem(),
          buildInfoItem(),
        ],
      ),
    );
  }

  Widget buildInfoItem() {
    return Column(
      children: [
        Text(
          'name',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'date',
          style: TextStyle(fontSize: 14, color: Color(0xffa6a6a6)),
        )
      ],
    );
  }

  Widget buildLasTrainingList() {
    return Container();
  }
}
