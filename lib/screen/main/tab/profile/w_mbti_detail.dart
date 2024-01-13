import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/common/constants.dart';
import 'package:bible_mbti_app/screen/main/tab/result/vo/resultVO.dart';
import 'package:flutter/material.dart';

class MbtiDetail extends StatelessWidget {
  String mbti;
  MbtiDetail({super.key, required this.mbti});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        scrolledUnderElevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Hero(
            tag: "mbti-tag-$mbti",
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(170),
                      child: Image.asset(
                        "$baseMbtiPath/${resultMap[mbti]?.mbtiImgPath}",
                        width: double.infinity,
                        height: 305,
                      ),
                    ).pOnly(top: 20),
                    "${resultMap[mbti]?.mbti}"
                        .text
                        .bold
                        .size(28)
                        .make()
                        .pOnly(top: 16),
                    "${resultMap[mbti]?.person}".text.bold.size(20).make(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "• ${resultMap[mbti]?.char1}"
                            .text
                            .size(16)
                            .make()
                            .pOnly(bottom: 8),
                        "• ${resultMap[mbti]?.char2}"
                            .text
                            .size(16)
                            .make()
                            .pOnly(bottom: 8),
                        "• ${resultMap[mbti]?.char3}"
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
        ),
      ),
    );
  }
}
