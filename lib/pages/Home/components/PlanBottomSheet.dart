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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          '这是一个四分化训练,非常牛逼,所以这段文字非常的长长长长长长长长长长长长',
          style: TextStyle(fontSize: 12, color: Color(0xff9fa4aa)),
        )
      ],
    );
  }
}
