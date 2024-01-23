import 'package:bible_mbti_app/common/constants.dart';
import 'package:bible_mbti_app/common/widget/w_clipoval_container.dart';
import 'package:bible_mbti_app/common/widget/w_mbti_info.dart';
import 'package:bible_mbti_app/screen/main/tab/home/vo/result_type.dart';
import 'package:bible_mbti_app/screen/main/tab/result/vo/resultVO.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ResultFragment extends StatefulWidget {
  const ResultFragment({super.key});

  @override
  State<ResultFragment> createState() => _ResultFragmentState();
}

class _ResultFragmentState extends State<ResultFragment>
    with ResultTypeProvier {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => resultData.result.isEmpty
              ? "나의 성경 인물 속 MBTI는?".text.make()
              : "나의 결과는?"
                  .text
                  .bold
                  .size(26)
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
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
