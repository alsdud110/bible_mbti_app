import 'package:bible_mbti_app/common/dart/extension/context_extension.dart';
import 'package:bible_mbti_app/common/data/preference/prefs.dart';
import 'package:bible_mbti_app/common/theme/custom_theme.dart';
import 'package:bible_mbti_app/common/theme/theme_util.dart';
import 'package:bible_mbti_app/common/widget/w_empty_expanded.dart';
import 'package:bible_mbti_app/common/widget/w_height_and_width.dart';
import 'package:bible_mbti_app/common/widget/w_tap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingTheme extends StatefulWidget {
  const SettingTheme({super.key});

  @override
  State<SettingTheme> createState() => _SettingThemeState();
}

class _SettingThemeState extends State<SettingTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "테마".text.make()),
      body: Column(
        children: [
          Tap(
            onTap: () {
              setState(() {
                if (context.isDarkMode) {
                  ThemeUtil.toggleTheme(context);
                  Prefs.appTheme.set(CustomTheme.light);
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 16, bottom: 16),
              child: Row(
                children: [
                  Icon(Icons.sunny,
                      color: context.isDarkMode == false
                          ? context.appColors.confirmText
                          : Colors.white),
                  width20,
                  "밝게"
                      .text
                      .size(16)
                      .color(context.isDarkMode == false
                          ? context.appColors.confirmText
                          : Colors.white)
                      .make(),
                  const EmptyExpanded(),
                  if (!context.isDarkMode)
                    Icon(
                      Icons.check,
                      color: context.isDarkMode == false
                          ? context.appColors.confirmText
                          : Colors.white,
                    ).pOnly(right: 20),
                ],
              ),
            ),
          ),
          const Divider(
            height: 0.5,
            thickness: 0.5,
          ),
          height10,
          Tap(
            onTap: () {
              setState(() {
                if (!context.isDarkMode) {
                  ThemeUtil.toggleTheme(context);
                  Prefs.appTheme.set(CustomTheme.dark);
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 4, bottom: 16),
              child: Row(
                children: [
                  Icon(CupertinoIcons.moon_fill,
                      color: context.isDarkMode == true
                          ? context.appColors.confirmText
                          : Colors.black),
                  width20,
                  "어둡게"
                      .text
                      .size(16)
                      .color(context.isDarkMode == true
                          ? context.appColors.confirmText
                          : Colors.black)
                      .make(),
                  const EmptyExpanded(),
                  if (context.isDarkMode)
                    Icon(
                      Icons.check,
                      color: context.isDarkMode == true
                          ? context.appColors.confirmText
                          : Colors.black,
                    ).pOnly(right: 20),
                ],
              ),
            ),
          ),
          const Divider(
            height: 0.5,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
