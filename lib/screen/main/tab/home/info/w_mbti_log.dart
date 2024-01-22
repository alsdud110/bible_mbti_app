import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/screen/main/tab/home/vo/result_type.dart';
import 'package:bible_mbti_app/screen/main/tab/profile/w_mbti_detail.dart';
import 'package:bible_mbti_app/screen/main/tab/result/vo/resultVO.dart';
import 'package:flutter/material.dart';

class MbtiLog extends StatelessWidget with ResultTypeProvier {
  MbtiLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        height5,
        const Divider(
          thickness: 3.5,
          indent: 40,
          endIndent: 40,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...resultData.resultListMap.reversed
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    e["reg_dt"]!.text.size(20).make(),
                                    e["mbti"]!.text.size(22).bold.make(),
                                  ],
                                ),
                                Tap(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      PageRouteBuilder(
                                        pageBuilder: ((context, animation,
                                            secondaryAnimation) {
                                          var curvedAnimation = CurvedAnimation(
                                              parent: animation,
                                              curve: Curves.fastOutSlowIn);
                                          return FadeTransition(
                                            opacity: curvedAnimation,
                                            child: MbtiDetail(
                                              mbti: e["mbti"]!,
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: CircleAvatar(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          "$baseMbtiPath/${resultMap[e["mbti"]!]!.mbtiImgPath}",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            height10,
                            const Divider(
                              thickness: 0.5,
                              indent: 5,
                              endIndent: 5,
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
