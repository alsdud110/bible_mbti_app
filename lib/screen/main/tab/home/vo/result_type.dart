import 'package:get/get.dart';

abstract mixin class ResultTypeProvier {
  late final resultData = Get.find<ResultType>();
}

class ResultType extends GetxController {
  List<String> userAnswerList = [];
  String result = "";

  void getMBTI() {
    List<String> resultList = extractMultipleOccurrences(userAnswerList);
    result = finalResult(resultList).join();
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
    print(resultList);
    print(resultList.length);
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
