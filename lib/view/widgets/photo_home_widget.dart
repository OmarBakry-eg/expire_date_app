import 'dart:math';

import 'package:expire_date/model/consts.dart';
import 'package:expire_date/view/AllOrExpiredElementsScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DescWidget extends StatelessWidget {
  final String imageAsset, textDesc;
  final int dataCount;
  const DescWidget({required this.imageAsset, required this.dataCount, required this.textDesc});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                  child: AllOrExpiredElementsList(),
                  type: pageTransitionTypeList[Random().nextInt(pageTransitionTypeList.length)],
                  alignment: alignmentList[Random().nextInt(alignmentList.length)],
                ));
          },
          child: Container(
            width: 170,
            height: 196,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
                color: const Color(0xff0f082f),
                image: DecorationImage(image: AssetImage(imageAsset))),
            child: // Adobe XD layer: 'Rectangle' (shape)
                Row(
              children: [
                Container(
                  width: 12,
                  height: 196,
                  decoration: BoxDecoration(
                    color: textDesc.contains("All") ? Color(0xffffcc0a) : Color(0xFF7C37FA),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text.rich(
          TextSpan(
            style: Styles.textStyle,
            children: [
              TextSpan(
                text: '$textDesc ',
              ),
              TextSpan(
                text: '($dataCount)',
                style: Styles.textStyle.copyWith(
                  color: const Color(0xff7c37fa),
                ),
              ),
            ],
          ),
          textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
