import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:light/pages/Home/components/PlanItem.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'components/Plan.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                buildHeader(),
                SizedBox(
                  height: 24,
                ),
                buildInfo(),
                SizedBox(
                  height: 24,
                ),
                buildLasTrainingList(),
                SizedBox(
                  height: 16,
                ),
                Container(
                  // width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TabBar(
                        indicatorColor: Colors.blue,
                        isScrollable: true,
                        controller: _tabController,
                        tabs: [
                          Tab(
                            text: "训练计划",
                          ),
                          Tab(
                            text: "训练模板",
                          ),
                        ],
                        labelColor: Colors.black,
                        indicator: MaterialIndicator(
                          color: Colors.blue[400]!,
                          // distanceFromCenter: 16,
                          // radius: 3,
                          horizontalPadding: 30,
                          topLeftRadius: 0,
                          topRightRadius: 0,
                          paintingStyle: PaintingStyle.fill,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            '查看全部',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff50a8f1)),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                    child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TabBarView(
                      controller: _tabController,
                      children: [buildPlan(), buildTrainingListBody()]),
                ))

                // buildTrainingListHeader(),
                // SizedBox(
                //   height: 8,
                // ),
                //
              ],
            )));
  }

  Widget buildPlan() {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,

      // Generate 100 widgets that display their index in the List.
      children: List.generate(6, (index) {
        return Plan();
      }),
    );
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
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
    return Row(
      // textDirection: TextDirection.rtl,
      children: [
        buildDate(),
        SizedBox(
          width: 10,
        ),
        buildTrainingInfo(),
      ],
    );
  }

  Widget buildDate() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff1a73e8),
          borderRadius: BorderRadius.all(Radius.circular(6))),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      child: Column(
        children: [
          Text(
            '22',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '四月',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }

  Widget buildTrainingInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Spacer(),
        Text(
          '今日计划训练',
          style: TextStyle(fontSize: 13, color: Color(0xffa6a6a6)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '背二头',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget buildTrainingRep() {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
      ],
    );
  }

  Widget buildTrainingListHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '我的模板',
          style: TextStyle(fontSize: 13, color: Color(0xffa6a6a6)),
        ),
        Text(
          '查看全部',
          style: TextStyle(fontSize: 13, color: Colors.blue),
        )
      ],
    );
  }

  Widget buildTrainingListBody() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return PlanItem();
      },
      // separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
