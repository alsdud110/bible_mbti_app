import 'package:bible_mbti_app/screen/main/tab/home/vo/result_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ResultFragment extends StatelessWidget with ResultTypeProvier {
  ResultFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: resultData.result.text.bold.make(),
        ),
      ),
    );
  }
}
