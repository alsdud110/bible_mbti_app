import 'package:bible_mbti_app/screen/main/tab/home/vo/answer_type.dart';
import 'package:bible_mbti_app/screen/main/tab/home/vo/question_answer.dart';

final questionList = [
  QuestionAnswer(
    question: "어디로 여행갈까?",
    questionType: "EI",
    answer1: AnswerType(answer: "파티가 쿵짝쿵짝 매일같이 열리는 뉴욕으로 간다.", answerType: "E"),
    answer2: AnswerType(answer: "조용하고 한적한 몰디브 가서 모히토 마신다.", answerType: "I"),
  ),
  QuestionAnswer(
    question: "나의 수다 떠는 스타일은? ",
    questionType: "EI",
    answer1: AnswerType(answer: "어묵탕 하나 시키고 소주 들이키며 수다.", answerType: "E"),
    answer2: AnswerType(answer: "조용히 친구들과 카페 가서 커피 한잔 마시며 쉰다", answerType: "I"),
  ),
  QuestionAnswer(
    question: "10년 만에 친구한테 뭐하냐고 연락이 왔다. 나의 속마음은?",
    questionType: "EI",
    answer1: AnswerType(answer: "(뭐지?)반갑다 오랜만이야!", answerType: "I"),
    answer2: AnswerType(answer: "(어머머 웬일이야)반갑다 오랜만이야!", answerType: "E"),
  ),
  QuestionAnswer(
    question: "감동적인 영화를 볼 때 나는?",
    questionType: "SN",
    answer1:
        AnswerType(answer: "오! 정말 영화 잘 만들었네! 한 번 더 봐야겠어!", answerType: "S"),
    answer2: AnswerType(answer: "흑흑흫흫규규흐흫규ㅠㅠ", answerType: "N"),
  ),
  QuestionAnswer(
    question: "자고 일어났더니 낯선 환경에 내가 있다는 이런 상황일 때 나는? ",
    questionType: "SN",
    answer1: AnswerType(answer: "기왕 이렇게 된 거 그 상황을 즐긴다.", answerType: "N"),
    answer2: AnswerType(
        answer: "즐기기보단 앞으로의 상황을 생각해 살 수 있는 궁리를 한다.", answerType: "S"),
  ),
  QuestionAnswer(
    question: "오늘 친한 친구와 싸웠다, 자기 전의 행동은?",
    questionType: "SN",
    answer1: AnswerType(answer: "저절로 잠들기 전까지 생각하다 잠든다.", answerType: "N"),
    answer2: AnswerType(answer: "졸리니까 일단 자자....", answerType: "S"),
  ),
  QuestionAnswer(
    question: "누군가가 실수를 했을 때 뭐라 말해 줄까?",
    questionType: "TF",
    answer1:
        AnswerType(answer: "위로해주되 정확히 분석하여 앞으로는 그러지 않게 도와준다.", answerType: "T"),
    answer2: AnswerType(answer: "위로해주면서 공감을 해준다.", answerType: "F"),
  ),
  QuestionAnswer(
    question: "여행지에서 관광상품을 사 가려고 한다 나는? ",
    questionType: "TF",
    answer1: AnswerType(answer: "정말로 필요한 물품들을 사 간다.", answerType: "T"),
    answer2: AnswerType(
        answer: "기왕 여행 온 거 관광지 특유의 관광상품을 사간다(EX.돌하르방 모형)", answerType: "F"),
  ),
  QuestionAnswer(
    question: "모르는 사람들과 파티를 한다. 그 상황에서 나는?",
    questionType: "TF",
    answer1:
        AnswerType(answer: "조용히 뒤에 있다가 속으로 에잇! 하고 그냥 자러간다.", answerType: "T"),
    answer2: AnswerType(answer: "같이 술 마시며 분위기를 휘어잡는다.", answerType: "F"),
  ),
  QuestionAnswer(
    question: "애인: 우리 내일 여행가잖아~ 계획 세워보자! 나의 대답은? ",
    questionType: "JP",
    answer1: AnswerType(
        answer: "이때는 여기 가서 이걸 먹고 그 다음으로 택시를 타서 어디로 간 뒤에 여기서는 이걸 사진 찍고(등등)",
        answerType: "J"),
    answer2: AnswerType(answer: "(까먹음)우리 어디 가기로 했지?", answerType: "P"),
  ),
  QuestionAnswer(
    question: "친구랑 약속을 잡았다. 약속 시간이 다가오는 상태에서 나는?",
    questionType: "JP",
    answer1: AnswerType(
        answer: "(친구가 영상통화로 나온 거 확인 후)그제야 준비하고 나간다.", answerType: "P"),
    answer2: AnswerType(
        answer: "약속 시간 2시간 전부터 준비하여 대중교통 막히는 거까지 고려해서 출발하여 늦지 않게 나간다.",
        answerType: "J"),
  ),
  QuestionAnswer(
    question: "친구랑 여행 중에 친구가 아침에 일어나지 않아 계획에 차질이 생긴다. 이 때의 나는?",
    questionType: "JP",
    answer1: AnswerType(
        answer: "계획은 절대 바꿀 수 없으므로 친구를 어떻게든 깨워서 간다.", answerType: "J"),
    answer2: AnswerType(answer: "아몰랑 같이 잔다.", answerType: "P"),
  ),
];
