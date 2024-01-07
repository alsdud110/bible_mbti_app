import 'package:bible_mbti_app/screen/main/tab/home/vo/answer_type.dart';

class QuestionAnswer {
  final String question;
  final String questionType;
  final AnswerType answer1;
  final AnswerType answer2;

  QuestionAnswer({
    required this.question,
    required this.questionType,
    required this.answer1,
    required this.answer2,
  });
}
