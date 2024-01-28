import 'package:bible_mbti_app/common/constants.dart';
import 'package:bible_mbti_app/common/dart/extension/context_extension.dart';
import 'package:bible_mbti_app/common/widget/w_clipoval_container.dart';
import 'package:bible_mbti_app/common/widget/w_mbti_info.dart';
import 'package:bible_mbti_app/common/widget/w_tap.dart';
import 'package:bible_mbti_app/screen/main/tab/home/vo/result_type.dart';
import 'package:bible_mbti_app/screen/main/tab/result/vo/resultVO.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:nav/nav.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with ResultTypeProvier {
  bool isVisible = false;
  @override
  void initState() {
    Future.delayed(1500.ms, () {
      setState(() {
        isVisible = true;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
        title: Obx(
          () => resultData.result.isEmpty
              ? "나의 성경 인물 속 MBTI는?".text.make()
              : "나의 결과는?"
                  .text
                  .bold
                  .size(30)
                  .bold
                  .make()
                  .animate()
                  .scaleXY(duration: 800.ms),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Obx(
          () => Center(
            child: resultData.result.isEmpty
                ? "테스트를 먼저 완료해야 나의 유형을 알 수 있습니다.".text.bold.size(16).make()
                : Column(
                    children: [
                      RoundedContainer(
                        imgPath:
                            "$baseMbtiPath/${resultMap[resultData.result.value]?.mbtiImgPath}",
                      ),
                      MbtiInfo(
                        mbti: "${resultMap[resultData.result.value]?.mbti}",
                        person: "${resultMap[resultData.result.value]?.person}",
                        char1: "${resultMap[resultData.result.value]?.char1}",
                        char2: "${resultMap[resultData.result.value]?.char2}",
                        char3: "${resultMap[resultData.result.value]?.char3}",
                        desc1: "${resultMap[resultData.result.value]?.desc1}",
                        desc2: "${resultMap[resultData.result.value]?.desc2}",
                      ),
                      AnimatedOpacity(
                        duration: 1000.ms,
                        opacity: isVisible ? 1.0 : 0.0,
                        child: Tap(
                          onTap: () {
                            Nav.pop(context);
                          },
                          child: Container(
                            height: 70,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            decoration: BoxDecoration(
                              color: context.appColors.inActivate,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Center(
                                child: "다시 해보기!!"
                                    .text
                                    .size(16)
                                    .maxLines(2)
                                    .make()),
                          ),
                        ).pOnly(top: 24),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
