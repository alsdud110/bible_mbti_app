import 'package:bible_mbti_app/screen/main/tab/home/vo/result_type.dart';
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Obx(
          () => Center(
            child: resultData.result.isEmpty
                ? "테스트를 먼저 완료해야 나의 유형을 알 수 있습니다."
                    .text
                    .bold
                    .size(22)
                    .make()
                    .centered()
                : resultData.result.value.text.bold.size(28).make(),
          ),
        ),
      ),
    );
  }
}
