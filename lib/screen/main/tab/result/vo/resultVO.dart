class ResultVO {
  final String mbti;
  final String person;
  final String mbtiImgPath;
  final String char1;
  final String char2;
  final String char3;

  ResultVO(
      {required this.mbti,
      required this.person,
      String? mbtiImgPath,
      required this.char1,
      required this.char2,
      required this.char3})
      : mbtiImgPath = mbtiImgPath ?? "$mbti.png";
}

Map<String, ResultVO> resultMap = {
  "ENTJ": ResultVO(
      mbti: "ENTJ",
      person: "사도 바울",
      char1: "이끌고 싶어 하는 욕구가 강하고 가장 열정적",
      char2: "조화를 위해 하나님의 사랑에 초점을 맞춰야 하는 타입",
      char3: "리더쉽과 의사소통의 대가로 잘 알려진 말씀의 해설자"),
  "ENTP": ResultVO(
      mbti: "ENTP",
      person: "에훗",
      char1: "세상과 말씀을 잘 융합할 수 있는 이야기꾼, 은유법의 달인",
      char2: "다른 사람들을 알려주기 위한 교훈의 은사를 갖고 있음",
      char3: "극한의 위기에서 상황 판단 단번에 하고 제일 먼저 탈출"),
  "ESFJ": ResultVO(
      mbti: "ESFJ",
      person: "요한",
      char1: "다른 이를 섬기고, 일하는 것을 통해 자신의 헌신적인 면을 보여줌",
      char2: "하나님과 다른 이들과의 친밀한 관계를 통해 힘을 얻고, 그들을 위해 봉사함",
      char3: "사회생활 잘한다는 소리를 자주 들음"),
  "ESFP": ResultVO(
      mbti: "ESFP",
      person: "야고보",
      char1: "행동 지향적이며, 자기 삻을 통해 믿음을 보여줌",
      char2: "하나님에 대해 친구 같은 따뜻한 감정의 소유자",
      char3: "예배 때 찬양 부르기 좋아함"),
  "ESTJ": ResultVO(
      mbti: "ESTJ",
      person: "여호수아",
      char1: "교회의 기둥이며 봉사에 적극적",
      char2: "말씀의 원리를 설명하는 데 있어 노련하고 강한 신념을 가짐",
      char3: "교회의 전통에 충실하고, 논리와 현실성과 역사의 가치를 잘 알고 있음"),
  "ESTP": ResultVO(
      mbti: "ESTP",
      person: "스가랴",
      char1: "자발적이고 하나님께 복종할수록 점점 안정되는 믿음을 가진 사람",
      char2: "다수가 교회에 등질 때 기꺼이 자신을 희생함",
      char3: "갈등이 심해질수록 머리는 차가워짐"),
  "INTJ": ResultVO(
      mbti: "INTJ",
      person: "모세",
      char1: "위대한 믿음을 갖고 있고, 헌신적이기 때문에 순교적인 인물이 될 수 있음",
      char2: "어려운 언어나 이국적인 음식, 또는 위험한 환경 등에 크게 영향을 받지 않음",
      char3: "성경을 읽고 해석하는데 뛰어난 재능을 가짐"),
  "INFJ": ResultVO(
      mbti: "INFJ",
      person: "예레미야",
      char1: "기도, 예배 그리고 하나님과의 교제를 중요하게 여김",
      char2: "다른 사람의 아픔과 시련을 함께 해줄 수 있는 사람",
      char3: "기도와 영적인 여정을 즐기는 사람"),
  "INFP": ResultVO(
      mbti: "INFP",
      person: "세례 요한",
      char1: "엄청난 사랑의 소유자이며, 다른 사람을 위하는 마음이 큼",
      char2: "나만의 신념, 가치관을 갖고 있음",
      char3: "우유부단하며 일을 잘 미룸"),
  "INTP": ResultVO(
      mbti: "INTP",
      person: "솔로몬",
      char1: "논리적 설명, 과학적 사실과 지식을 중요시함",
      char2: "토론과 설교를 중요시함",
      char3: "자신이 믿는 것에 대해 이해와 목적을 갈망하는 타입"),
  "ISFJ": ResultVO(
      mbti: "ISFJ",
      person: "마리아",
      char1: "뒤에서 안 보이게 섬기고 의생할 수 있는 사람",
      char2: "다른 이들을 설득하고 동기를 부여할 수 있는 신념을 가짐",
      char3: "계획 세우는 것을 좋아하고 계획대로 일이 진행되어야 마음이 편함"),
  "ISFP": ResultVO(
      mbti: "ISFP",
      person: "아담",
      char1: "영적인 감정들과 생각들을 조용히, 깊이 있게 대하는 사람",
      char2: "따스한 사람이고, 책임감과 때론 죄책감까지도 짊어짐",
      char3: "기도와 예배를 매일 드림에 있어서 자연스럽고, 실천을 통해 자신을 나타냄"),
  "ENFP": ResultVO(
      mbti: "ENFP",
      person: "베드로",
      char1: "노래, 말, 찬양, 행동으로 믿음을 표현하는 것을 가치 있게 여김",
      char2: "은사를 의욕적으로 이행함",
      char3: "어린아이 같은 면이 있음"),
  "ENFJ": ResultVO(
      mbti: "ENFJ",
      person: "요나단",
      char1: "자신의 시간과 노력을 기꺼이 다른 이에게 헌신함",
      char2: "여러 생각을 말씀에 적용하는 능력이 뛰어나 훌륭한 영적 멘토가 될 수 있음",
      char3: "말로 사람의 마음을 움직이게 하는 능력이 탁월함"),
  "ISTP": ResultVO(
      mbti: "ISTP",
      person: "노아",
      char1: "자신이 믿는 것에 대해 열정을 갖고, 신념을 지켜나감",
      char2: "사회나 청년 사역에서 섬기는 역할을 많이함",
      char3: "대부분 사회 모임에 참여하길 꺼리고, 옳고 그름에 민감한 사상가"),
  "ISTJ": ResultVO(
      mbti: "ISTJ",
      person: "아브라함",
      char1: "교회에서 중요한 역할을 맡는 사람이고, 신뢰감 있고 안정적인 타입",
      char2: "진리에 대한 욕심이 많음",
      char3: "즉흥적인 것을 싫어하고 계획 세우는 것을 잘함"),
};

List<String> mbtiList = [
  "ENTJ",
  "ENTP",
  "ENFJ",
  "ENFP",
  "ESFJ",
  "ESFP",
  "ESTJ",
  "ESTP",
  "INFJ",
  "INFP",
  "INTJ",
  "INTP",
  "ISFJ",
  "ISFP",
  "ISTJ",
  "ISTP",
];

// ENTJ - 바울
// ENTP - 에훗
// ENFP - 베드로
// ENFJ - 요나단
// ESFJ - 요한
// ESFP - 야고보
// ESTJ - 여호수아
// ESTP - 스가랴
// INFJ - 예레미야
// INFP - 세례요한
// INTJ - 모세
// INTP - 솔로몬
// ISFJ - 마리아 
// ISFP - 아담
// ISTP - 노아
// ISTJ - 아브라함
