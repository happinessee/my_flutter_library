import 'package:flutter/material.dart';

Widget nevigationBar({
  required List<bool> isSelected,
  required Function(int) onClick,
}) {
  return (ToggleButtons(
    isSelected: isSelected,
    onPressed: onClick,
    borderWidth: 0,
    color: Colors.grey,
    borderColor: Colors.white,
    focusColor: Colors.white,
    borderRadius: BorderRadius.circular(15),
    highlightColor: Colors.white,
    selectedColor: Colors.black,
    splashColor: Colors.white,
    fillColor: Colors.white,
    hoverColor: Colors.white,
    selectedBorderColor: Colors.white,
    children: [
      toggleIconText(
        icon: const Icon(Icons.home_rounded),
        text: toggleText(message: '홈'),
      ),
      toggleIconText(
        icon: const Icon(Icons.settings),
        text: toggleText(message: '설정'),
      ),
      toggleIconLongText(
        icon: const Icon(Icons.menu_book),
        text: toggleText(message: '서비스 소개'),
      ),
    ],
  ));
}

Widget toggleIconText({
  required Icon icon,
  required Text text,
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(35, 5, 35, 5),
    child: Column(
      children: [
        icon,
        const SizedBox(height: 1),
        text,
      ],
    ),
  );
}

// 글자 수가 5글자 이상일 때 사용을 추천합니다.
Widget toggleIconLongText({
  required Icon icon,
  required Text text,
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
    child: Column(
      children: [
        icon,
        const SizedBox(height: 1),
        text,
      ],
    ),
  );
}

Text toggleText({required String message}) {
  return Text(
    message,
    style: const TextStyle(
      fontFamily: 'galmuri',
      fontSize: 12,
    ),
  );
}
