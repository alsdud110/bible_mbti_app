import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/common/dart/extension/context_extension.dart';
import 'package:bible_mbti_app/common/widget/w_tap.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() onTap;
  const AnswerButton({super.key, required this.answer, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Tap(
        onTap: onTap,
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
            color: context.appColors.inActivate,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(child: answer.text.size(16).maxLines(2).make())
              .animate()
              .fadeIn(duration: 1200.ms),
        ),
      ),
    );
  }
}
