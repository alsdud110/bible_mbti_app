import 'package:bible_mbti_app/common/data/preference/item/preference_item.dart';

class NullablePreferenceItem<T> extends PreferenceItem<T?> {
  NullablePreferenceItem(String key, [T? defaultValue])
      : super(key, defaultValue);
}
