import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

mixin MyColors {
  static const Color backgroundColor = Color(0xFF090622);
  static const Color hintColor = Color(0xFF7b7890);
  static const Color textColor = Colors.white;
}

mixin Styles {
  static const TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: MyColors.textColor,
    height: 1.5,
  );
  static const TextStyle hintStyle = TextStyle(
    fontSize: 16,
    color: MyColors.hintColor,
    height: 1.5,
  );
  static final TextStyle hintStyle2 = hintStyle.copyWith(
    height: 1.7142857142857142,
  );
}

List<PageTransitionType> pageTransitionTypeList = [
  PageTransitionType.fade,
  PageTransitionType.rightToLeft,
  PageTransitionType.leftToRight,
  PageTransitionType.topToBottom,
  PageTransitionType.bottomToTop,
  PageTransitionType.scale,
  PageTransitionType.rotate,
  PageTransitionType.size,
  PageTransitionType.rightToLeftWithFade,
  PageTransitionType.leftToRightWithFade,
];

List<Alignment> alignmentList = [
  Alignment.topLeft,
  Alignment.topCenter,
  Alignment.topRight,
  Alignment.centerLeft,
  Alignment.center,
  Alignment.centerRight,
  Alignment.bottomLeft,
  Alignment.bottomCenter,
  Alignment.bottomRight
];
