import 'package:flutter/material.dart';
import 'package:light/pages/Home/components/Plan.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:route_transitions/route_transitions.dart';

import 'PlanItem.dart';

void showLanguageSelectDialog(BuildContext context) {
  // List<String> data = AppConfig.languageSupports.keys.toList();
  // showCupertinoModalBottomSheet(
  //   expand: true,
  //   context: context,
  //   backgroundColor: Colors.transparent,
  //   builder: (context) => ModalFit(),
  slideUpWidget(
    newPage: ModalFit(),
    context: context,
  );
}

class ModalFit extends StatelessWidget {
  const ModalFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
            top: false,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: ListView(
                    children: [
                      buildInfo(),
                      SizedBox(
                        height: 16,
                      ),
                      buildProgress(),
                      SizedBox(
                        height: 16,
                      ),
                      PlanItem(),
                      PlanItem(),
                      PlanItem(),
                      PlanItem()
                    ],
                  ),
                ),
                Positioned(
                    right: 10,
                    bottom: 40,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      splashRadius: 16.0,
                      icon: Icon(
                        Icons.cancel,
                        size: 32,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        pop(context);
                      },
                    ))
              ],
            )));
  }

  Widget buildInfo() {
    return Row(
      children: [
        Expanded(
          child: buildTitleAndDesc(),
        ),
        TextButton(onPressed: () {}, child: Text('编辑'))
      ],
    );
  }

  Widget buildTitleAndDesc() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '四分化训练',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Text(
          '这是一个四分化训练,非常牛逼,所以这段文字非常的长长长长长长长长长长长长',
          style: TextStyle(fontSize: 12, color: Color(0xff9fa4aa)),
        )
      ],
    );
  }

  Widget buildProgress() {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
      decoration: BoxDecoration(
          color: Colors.blue[200]!.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('周期'), Text('80%')],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                Flexible(
                  // 第一个占用 1/6
                  flex: 8,
                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.blue[400]!,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(8),
                        )),
                    alignment: Alignment.center,
                    child: Text(''),
                  ),
                ),
                Flexible(
                  // 第 2 个占用 2/6
                  flex: 2,

                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(8),
                        )),
                    alignment: Alignment.center,
                    child: Text(''),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getItem(int index, [double width = 60, double height = 60]) {
    return Container(
      // 宽高设置 60
      // width: width,
      // height: height,
      // 设置背景色
      color: Colors.orange.shade200,
      // 设置间隙
      // margin: EdgeInsets.all(2),
      // 设置子项居中
      alignment: Alignment.center,
      // 设置子项
      child: Text('$index'),
    );
  }
}
