import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final String imgPath;
  const RoundedContainer({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: context.appColors.blurColor.withOpacity(0.6),
            spreadRadius: 10,
            blurRadius: 13,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(170),
        child: Image.asset(
          imgPath,
          width: double.infinity,
          height: 337,
        ),
      ),
    ).pOnly(top: 26);
  }
}
