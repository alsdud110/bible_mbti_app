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
    question: "여행가는 기차 안에서 무슨 생각해",
    questionType: "SN",
    answer1: AnswerType(answer: "무슨 노래 듣지~?~?", answerType: "S"),
    answer2: AnswerType(answer: "기차 갑자기 고장나면 어떡하지..?", answerType: "N"),
  ),
  QuestionAnswer(
    question: "버스에서 눈 내리는 밖을 바라보며",
    questionType: "SN",
    answer1:
        AnswerType(answer: "버스는 안 미끄러지나.. 도대체 몇시까지 눈이 오는거지?", answerType: "N"),
    answer2: AnswerType(answer: "눈싸움 하고 싶다.. 눈으로 오리 만들고싶다!!", answerType: "S"),
  ),
  QuestionAnswer(
    question: "만약에 내가 잠들었다가 다음날 괴물로 일어나면 어떡해?",
    questionType: "SN",
    answer1: AnswerType(answer: "그럼 예쁜 괴물이야 아니면 무서운 괴물이야?", answerType: "N"),
    answer2: AnswerType(answer: "그럴 일 없어 쓸모없는 걱정임ㅇㅇ", answerType: "S"),
  ),
  QuestionAnswer(
    question: "시험을 너무 못 본 것 같아,, 어쩌지?",
    questionType: "TF",
    answer1: AnswerType(answer: "몇점 받았는데?", answerType: "T"),
    answer2: AnswerType(answer: "잘 봤을거야! 너무 속상해하지마~", answerType: "F"),
  ),
  QuestionAnswer(
    question: "나 감기가 너무 심해서 약속을 미뤄야 할 것 같아ㅠㅠ ",
    questionType: "TF",
    answer1: AnswerType(
        answer: "병원가서 약 처방 받았어? 약속은 다시 잡으면 되니까 걱정하지마..", answerType: "T"),
    answer2: AnswerType(answer: "정말?? 어떡해ㅠㅠ 많이 아픈거야?", answerType: "F"),
  ),
  QuestionAnswer(
    question: "나 너무 우울해서 쇼핑을 잔뜩했다??",
    questionType: "TF",
    answer1: AnswerType(answer: "정말? 뭐 샀는데?", answerType: "T"),
    answer2: AnswerType(answer: "왜 우울해.. 무슨일 생겼어?", answerType: "F"),
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
