import 'package:bible_mbti_app/common/data/preference/item/nullable_preference_item.dart';
import 'package:bible_mbti_app/common/data/preference/item/rx_preference_item.dart';
import 'package:bible_mbti_app/common/theme/custom_theme.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final mbtiLogRx = RxPreferenceItem<String, RxString>("mbtiLog", "");
}
