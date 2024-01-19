import 'package:bible_mbti_app/common/dart/extension/datetime_extension.dart';
import 'package:get/get.dart';

abstract mixin class ResultTypeProvier {
  late final resultData = Get.find<ResultType>();
}

class ResultType extends GetxController {
  List<String> userAnswerList = [];
  RxString result = "".obs;
  RxList<Map<String, String>> resultListMap = <Map<String, String>>[].obs;

  void getMBTI() {
    List<String> resultList = extractMultipleOccurrences(userAnswerList);
    result.value = finalResult(resultList).join();
    String nowYmd = DateTime.now().formattedDateCustom;

    Map<String, String> resultMap = {};
    resultMap["reg_dt"] = nowYmd;
    resultMap["mbti"] = result.value;
    resultListMap.add(resultMap);
  }

  List<String> extractMultipleOccurrences(List<String> userAnswerList) {
    Map<String, int> occurrences = {};

    // Count occurrences of each alphabet
    for (String alphabet in userAnswerList) {
      occurrences[alphabet] = (occurrences[alphabet] ?? 0) + 1;
    }

    // Extract alphabets with more than one occurrence
    List<String> result =
        occurrences.keys.where((key) => occurrences[key]! > 1).toList();

    return result;
  }

  List<String> finalResult(List<String> resultList) {
    List<String> resultFinalList = List<String>.filled(4, "");
    for (int i = 0; i < resultList.length; i++) {
      if (resultList[i] == "E" || resultList[i] == "I") {
        resultFinalList[0] = resultList[i];
      } else if (resultList[i] == "S" || resultList[i] == "N") {
        resultFinalList[1] = resultList[i];
      } else if (resultList[i] == "T" || resultList[i] == "F") {
        resultFinalList[2] = resultList[i];
      } else {
        resultFinalList[3] = resultList[i];
      }
    }
    return resultFinalList;
  }
}
