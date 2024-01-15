import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/common/dart/extension/context_extension.dart';
import 'package:bible_mbti_app/screen/main/tab/profile/w_mbti_detail.dart';
import 'package:bible_mbti_app/screen/main/tab/result/vo/resultVO.dart';
import 'package:flutter/material.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({super.key});

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "16인의 성경인물".text.make(),
        scrolledUnderElevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            ...mbtiList
                .asMap()
                .entries
                .map(
                  (e) => Tap(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MbtiDetail(mbti: mbtiList[e.key])),
                      );
                    },
                    child: Hero(
                      tag: "mbti-tag-${mbtiList[e.key]}",
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.42,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(170),
                              child: Image.asset(
                                "$baseMbtiPath/${resultMap[mbtiList[e.key]]?.mbtiImgPath}",
                                width: 150,
                                height: 150,
                              ),
                            ).pOnly(bottom: 20, left: 16, right: 16),
                          ),
                          Positioned(
                            left: 60,
                            top: 60,
                            child: "${resultMap[mbtiList[e.key]]?.mbti}"
                                .text
                                .size(26)
                                .bold
                                .shadow(0.5, 0.5, 1, context.appColors.text)
                                .make(),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ],
        ).pSymmetric(v: 20).centered(),
      ),
    );
  }
}
