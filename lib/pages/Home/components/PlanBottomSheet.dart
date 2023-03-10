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
        TextButton(onPressed: () {}, child: Text('??????'))
      ],
    );
  }

  Widget buildTitleAndDesc() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '???????????????',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Text(
          '???????????????????????????,????????????,???????????????????????????????????????????????????????????????',
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
            children: [Text('??????'), Text('80%')],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                Flexible(
                  // ??????????????? 1/6
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
                  // ??? 2 ????????? 2/6
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
      // ???????????? 60
      // width: width,
      // height: height,
      // ???????????????
      color: Colors.orange.shade200,
      // ????????????
      // margin: EdgeInsets.all(2),
      // ??????????????????
      alignment: Alignment.center,
      // ????????????
      child: Text('$index'),
    );
  }
}
