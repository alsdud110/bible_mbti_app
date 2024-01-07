import 'package:get/get.dart';

abstract mixin class ResultTypeProvier {
  late final resultData = Get.find<ResultType>();
}

class ResultType extends GetxController {
  List<String> userAnswerList = [];
  String result = "";

  void getMBTI() {
    List<String> resultList = extractMultipleOccurrences(userAnswerList);
    result = resultList.join();
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
}
