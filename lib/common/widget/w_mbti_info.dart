import 'package:bible_mbti_app/common/common.dart';
import 'package:flutter/material.dart';

class MbtiInfo extends StatelessWidget {
  final String mbti;
  final String person;
  final String char1;
  final String char2;
  final String char3;
  final String desc1;
  final String desc2;
  const MbtiInfo(
      {super.key,
      required this.mbti,
      required this.person,
      required this.char1,
      required this.char2,
      required this.char3,
      required this.desc1,
      required this.desc2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          mbti.text.bold.size(28).make().pOnly(top: 16),
          person.text.bold.size(20).make(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "• $char1"
                  .text
                  .size(18)
                  .color(Colors.red[400])
                  .make()
                  .pOnly(bottom: 6),
              "• $char2"
                  .text
                  .size(18)
                  .color(Colors.red[400])
                  .make()
                  .pOnly(bottom: 6),
              "• $char3"
                  .text
                  .size(18)
                  .color(Colors.red[400])
                  .make()
                  .pOnly(bottom: 6),
              "• $desc1"
                  .text
                  .size(18)
                  .color(Colors.blue[500])
                  .make()
                  .pOnly(bottom: 6),
              "• $desc2"
                  .text
                  .size(18)
                  .color(Colors.blue[500])
                  .make()
                  .pOnly(bottom: 6),
            ],
          ).pOnly(top: 26),
        ],
      ).pSymmetric(h: 16),
    );
  }
}
