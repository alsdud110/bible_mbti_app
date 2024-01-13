import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/common/constants.dart';
import 'package:bible_mbti_app/common/widget/w_clipoval_container.dart';
import 'package:bible_mbti_app/common/widget/w_mbti_info.dart';
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
                    RoundedContainer(
                      imgPath: "$baseMbtiPath/${resultMap[mbti]?.mbtiImgPath}",
                    ),
                    MbtiInfo(
                      mbti: "${resultMap[mbti]?.mbti}",
                      person: "${resultMap[mbti]?.person}",
                      char1: "${resultMap[mbti]?.char1}",
                      char2: "${resultMap[mbti]?.char2}",
                      char3: "${resultMap[mbti]?.char3}",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}