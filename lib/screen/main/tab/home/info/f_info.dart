import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/common/widget/w_menu_container.dart';
import 'package:bible_mbti_app/screen/dialog/d_message.dart';
import 'package:bible_mbti_app/screen/main/tab/home/info/w_mbti_log.dart';
import 'package:bible_mbti_app/screen/main/tab/home/info/w_setting_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoFragment extends StatelessWidget {
  const InfoFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "설정".text.make(),centerTitle: true,),
      body: Column(
        children: [
          MenuContainer(
            widget: "설정".text.size(16).color(context.appColors.infoText).make(),
          ),
          Tap(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: ((context, animation, secondaryAnimation) {
                    var curvedAnimation = CurvedAnimation(
                        parent: animation, curve: Curves.fastOutSlowIn);
                    return FadeTransition(
                      opacity: curvedAnimation,
                      child: const SettingTheme(),
                    );
                  }),
                ),
              );
            },
            child: Container(
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
          ),
          const Divider(
            height: 0.5,
            thickness: 0.5,
          ),
          Tap(
            onTap: () {
              final result = MessageDialog(
                "아직 지원하지 않는 기능입니다.",
                textAlign: TextAlign.center,
                buttonText: "닫기",
                fontSize: 16,
              ).show();
              debugPrint(result.toString());
            },
            child: Container(
              width: double.infinity,
              height: 45,
              padding: const EdgeInsets.only(left: 26),
              decoration:
                  BoxDecoration(color: context.appColors.infoTextBackgound),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.globe),
                  width10,
                  "지역 및 언어"
                      .text
                      .size(16)
                      .color(context.appColors.infoText)
                      .make()
                ],
              ),
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
                  const Icon(CupertinoIcons.square_list_fill),
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
