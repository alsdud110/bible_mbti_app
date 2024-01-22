import 'dart:convert';

import 'package:bible_mbti_app/common/dart/extension/datetime_extension.dart';
import 'package:bible_mbti_app/common/data/preference/prefs.dart';
import 'package:get/get.dart';

abstract mixin class ResultTypeProvier {
  late final resultData = Get.find<ResultType>();
}

class ResultType extends GetxController {
  List<String> userAnswerList = [];
  RxString result = "".obs;
  RxList<Map<String, String>> resultListMap = <Map<String, String>>[].obs;

  void getMBTI() async {
    String? storedJsonList = Prefs.mbtiLogRx.get();
    List<Map<String, dynamic>> storedList = [];

    if (storedJsonList.isNotEmpty) {
      storedList = List<Map<String, dynamic>>.from(jsonDecode(storedJsonList));
    }

    if (userAnswerList.isNotEmpty) {
      List<String> resultList = extractMultipleOccurrences(userAnswerList);
      result.value = finalResult(resultList).join();
      String nowYmd = DateTime.now().formattedDateCustom;

      Map<String, String> resultMap = {};
      resultMap["reg_dt"] = nowYmd;
      resultMap["mbti"] = result.value;
      resultListMap.add(resultMap);

      storedList = [];
      // 새로운 결과 추가
      storedList.addAll(resultListMap);

      // Json 형식의 문자열로 변환
      String jsonList = jsonEncode(storedList);

      // SharedPreferences에 저장
      await Prefs.mbtiLogRx.set(jsonList);
    }

    resultListMap
        .assignAll(storedList.map((item) => Map<String, String>.from(item)));
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
