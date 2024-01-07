import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/screen/dialog/d_message.dart';
import 'package:bible_mbti_app/screen/main/tab/home/vo/result_type.dart';
import 'package:bible_mbti_app/screen/main/tab/home/w_anser_button.dart';
import 'package:bible_mbti_app/screen/main/tab/result/f_result.dart';
import 'package:flutter/material.dart';
import 'package:bible_mbti_app/screen/main/tab/home/question_dummies.dart';
import 'package:get/get.dart';

import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> with ResultTypeProvier {
  @override
  void initState() {
    Get.put(ResultType());
    // TODO: implement initState
    super.initState();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "성경속 인물 MBTI".text.make(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Question
            currentIndex < 12
                ? Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: context.appColors.divider),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: questionList[currentIndex]
                              .question
                              .text
                              .size(16)
                              .make()),
                    ),
                  )
                : Tap(
                    onTap: () {
                      resultData.getMBTI();
                      print(resultData.result);
                      Nav.push(ResultFragment());
                    },
                    child: Center(
                      child: Container(
                        child: "완료!!".text.bold.make(),
                      ),
                    ),
                  ),
            currentIndex < 12
                ? Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        AnswerButton(
                          answer: questionList[currentIndex].answer1.answer,
                          onTap: () {
                            resultData.userAnswerList.add(
                                questionList[currentIndex].answer1.answerType);
                            setState(() {
                              currentIndex++;
                            });
                          },
                        ),
                        AnswerButton(
                          answer: questionList[currentIndex].answer2.answer,
                          onTap: () {
                            resultData.userAnswerList.add(
                                questionList[currentIndex].answer2.answerType);
                            setState(() {
                              currentIndex++;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  void showSnackbar(BuildContext context) {
    context.showSnackbar('snackbar 입니다.',
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'
              .text
              .white
              .size(13)
              .make()
              .centered()
              .pSymmetric(h: 10, v: 5),
        ));
  }

  Future<void> showConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '오늘 기분이 좋나요?',
      buttonText: "네",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      ColorBottomSheet(
        '❤️',
        context: context,
        backgroundColor: Colors.yellow.shade200,
      ).show();
    });

    confirmDialogResult?.runIfFailure((data) {
      ColorBottomSheet(
        '❤️힘내여',
        backgroundColor: Colors.yellow.shade300,
        textColor: Colors.redAccent,
      ).show();
    });
  }

  Future<void> showMessageDialog() async {
    final result = await MessageDialog("안녕하세요").show();
    debugPrint(result.toString());
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
