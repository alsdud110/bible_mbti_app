import 'package:bible_mbti_app/common/constants.dart';
import 'package:bible_mbti_app/screen/main/tab/home/vo/result_type.dart';
import 'package:bible_mbti_app/screen/main/tab/result/vo/resultVO.dart';
import 'package:flutter/material.dart';
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
          title: resultData.result.isEmpty
              ? "나의 성경 인물 속 MBTI는?".text.make()
              : resultData.result.value.text.size(30).bold.make()),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Obx(
          () => Center(
            child: resultData.result.isEmpty
                ? "테스트를 먼저 완료해야 나의 유형을 알 수 있습니다.".text.bold.size(16).make()
                : Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(170),
                        child: Image.asset(
                          "$baseMbtiPath/${resultMap[resultData.result.value]?.mbtiImgPath}",
                          width: double.infinity,
                          height: 305,
                        ),
                      ).pOnly(top: 20),
                      "${resultMap[resultData.result.value]?.mbti}"
                          .text
                          .bold
                          .size(28)
                          .make()
                          .pOnly(top: 16),
                      "${resultMap[resultData.result.value]?.person}"
                          .text
                          .bold
                          .size(20)
                          .make(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "• ${resultMap[resultData.result.value]?.char1}"
                              .text
                              .size(16)
                              .make()
                              .pOnly(bottom: 8),
                          "• ${resultMap[resultData.result.value]?.char2}"
                              .text
                              .size(16)
                              .make()
                              .pOnly(bottom: 8),
                          "• ${resultMap[resultData.result.value]?.char3}"
                              .text
                              .size(16)
                              .make()
                              .pOnly(bottom: 8),
                        ],
                      ).pOnly(top: 26),
                    ],
                  ).pSymmetric(h: 16),
          ),
        ),
      ),
    );
  }
}
