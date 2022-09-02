import 'package:flutter/material.dart';

BottomNavigationBar bottomNavigationBar({
  required int selectedIndex,
  required Function(int index) onTap,
}) {
  return (BottomNavigationBar(
    onTap: onTap,
    currentIndex: selectedIndex,
    selectedIconTheme: const IconThemeData(
      color: Color(0xffEF5808),
    ),
    unselectedItemColor: const Color(0xff757575),
    backgroundColor: Colors.white,
    iconSize: 28,
    selectedFontSize: 12,
    selectedLabelStyle: const TextStyle(
      color: Colors.red,
    ),
    items: [
      paddingIcon(
        icon: const Icon(Icons.home_outlined),
        label: '홈',
      ),
      paddingIcon(
        icon: const Icon(Icons.settings_outlined),
        label: '설정',
      ),
      paddingIcon(
        icon: const Icon(Icons.menu_book_outlined),
        label: '서비스 소개',
      )
    ],
  ));
}

BottomNavigationBarItem paddingIcon({
  required Icon icon,
  required String label,
}) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: icon,
    ),
    label: label,
  );
}
// 선택된 label의 색상이 변하지 않는 문제 있음
// github issue에 등록되었지만 해결되지 않음.
