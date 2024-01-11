import 'package:bible_mbti_app/common/common.dart';
import 'package:bible_mbti_app/screen/main/tab/home/f_home.dart';
import 'package:bible_mbti_app/screen/main/tab/result/f_result.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home, '테스트', HomeFragment()),
  profile(Icons.person, '내 결과', ResultFragment());
  // favorite(Icons.star, '즐겨찾기', FavoriteFragment(isShowBackButton: false));

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage,
      {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context,
      {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color: isActivated
              ? context.appColors.iconButton
              : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
