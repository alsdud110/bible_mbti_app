import 'dart:math';

import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/screen/main/tab/home/s_home.dart';
import 'package:bible_mbti_app/screen/main/tab/home/vo/result_type.dart';
import 'package:bible_mbti_app/screen/main/tab/home/w_anser_button.dart';
import 'package:flutter/material.dart';
import 'package:bible_mbti_app/screen/main/tab/home/question_dummies.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeFragment2 extends StatefulWidget {
  const HomeFragment2({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeFragment2> createState() => _HomeFragment2State();
}

class _HomeFragment2State extends State<HomeFragment2> with ResultTypeProvier {
  // ignore: unused_field
  final Key _homeFragment2Key = UniqueKey();
  @override
  void initState() {
    Get.put(ResultType());
    generateRandomNumber();
    resultData.getMBTI();
    // TODO: implement initState
    super.initState();
  }

  int currentIndex = 0;
  List<int> selectedNumbers = [];

  void generateRandomNumber() {
    Random random = Random();
    int randomNumber;

    do {
      randomNumber = random.nextInt(12);
    } while (selectedNumbers.contains(randomNumber));

    setState(() {
      selectedNumbers.add(randomNumber);
    });
  }

  void _incrementIndex() {
    setState(() {
      currentIndex++;
      if (currentIndex == 12) {
        resultData.getMBTI();
        // 만약 currentIndex가 12가 되면 2초 후에 네비게이션
        Future.delayed(1400.ms, () {
          currentIndex = 0;
          Nav.push(const HomeScreen());
          selectedNumbers.clear();
          generateRandomNumber();
          resultData.userAnswerList.clear();
        });
      }
    });
  }

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "성경속 인물 MBTI".text.make(),
      ),
      body: currentIndex < 12
          ? Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.67,
                  child: Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller,
                        itemCount: questionList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: context.appColors.divider),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: questionList[selectedNumbers[index]]
                                        .question
                                        .text
                                        .size(16)
                                        .make()
                                        .centered()
                                        .animate()
                                        .fadeIn(duration: 1200.ms),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: AnswerButton(
                                      onTap: () {
                                        resultData.userAnswerList.add(
                                          questionList[
                                                  selectedNumbers[currentIndex]]
                                              .answer1
                                              .answerType,
                                        );
                                        setState(() {
                                          if (currentIndex < 12) {
                                            _incrementIndex();
                                          }
                                        });
                                        if (currentIndex < 12) {
                                          generateRandomNumber();
                                        }
                                        controller.nextPage(
                                            duration: 300.ms,
                                            curve: Curves.easeIn);
                                      },
                                      answer: questionList[
                                              selectedNumbers[currentIndex]]
                                          .answer1
                                          .answer),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: AnswerButton(
                                      onTap: () {
                                        resultData.userAnswerList.add(
                                          questionList[
                                                  selectedNumbers[currentIndex]]
                                              .answer2
                                              .answerType,
                                        );
                                        setState(() {
                                          if (currentIndex < 12) {
                                            _incrementIndex();
                                          }
                                        });
                                        if (currentIndex < 12) {
                                          generateRandomNumber();
                                        }
                                        controller.nextPage(
                                            duration: 300.ms,
                                            curve: Curves.easeIn);
                                      },
                                      answer: questionList[
                                              selectedNumbers[currentIndex]]
                                          .answer2
                                          .answer),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: questionList.length,
                  effect: JumpingDotEffect(
                      jumpScale: 2.5,
                      activeDotColor: context.appColors.activate,
                      dotColor: context.appColors.inActivate,
                      dotHeight: 15,
                      dotWidth: 15,
                      spacing: 8),
                ).pOnly(top: 24),
              ],
            )
          : const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    strokeWidth: 7,
                  ),
                ],
              ),
            ),
    );
  }
}
