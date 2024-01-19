import 'package:bible_mbti_app/common/common.dart';
import 'package:flutter/material.dart';

class MenuContainer extends StatelessWidget {
  final Widget widget;
  const MenuContainer({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      padding: const EdgeInsets.only(left: 30, top: 12),
      decoration: BoxDecoration(color: context.appColors.greyContainer),
      child: widget,
    );
  }
}
