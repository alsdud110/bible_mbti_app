import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/common/widget/w_menu_container.dart';
import 'package:bible_mbti_app/screen/main/tab/home/info/w_mbti_log.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoFragment extends StatelessWidget {
  const InfoFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "정보".text.make()),
      body: Column(
        children: [
          MenuContainer(
            widget: "설정".text.size(16).color(context.appColors.infoText).make(),
          ),
          Container(
            width: double.infinity,
            height: 45,
            padding: const EdgeInsets.only(
              left: 26,
            ),
            decoration:
                BoxDecoration(color: context.appColors.infoTextBackgound),
            child: Row(
              children: [
                const Icon(Icons.mode_night_rounded),
                width10,
                "테마".text.size(16).color(context.appColors.infoText).make()
              ],
            ),
          ),
          const Divider(
            height: 0.5,
            thickness: 0.5,
          ),
          Container(
            width: double.infinity,
            height: 45,
            padding: const EdgeInsets.only(left: 26),
            decoration:
                BoxDecoration(color: context.appColors.infoTextBackgound),
            child: Row(
              children: [
                const Icon(Icons.place_rounded),
                width10,
                "지역 및 언어".text.size(16).color(context.appColors.infoText).make()
              ],
            ),
          ),
          MenuContainer(
            widget: "기록".text.size(16).color(context.appColors.infoText).make(),
          ),
          Tap(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: MbtiLog(),
                  );
                },
              );
            },
            child: Container(
              width: double.infinity,
              height: 45,
              padding: const EdgeInsets.only(left: 26),
              decoration:
                  BoxDecoration(color: context.appColors.infoTextBackgound),
              child: Row(
                children: [
                  const Icon(Icons.note),
                  width10,
                  "나의 MBTI 기록보기"
                      .text
                      .size(16)
                      .color(context.appColors.infoText)
                      .make()
                ],
              ),
            ),
          ),
          const Divider(
            height: 0.5,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
