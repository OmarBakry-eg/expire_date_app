import 'dart:math';
import 'package:expire_date/model/consts.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../add_element_screen.dart';



class ListTileWidget extends StatelessWidget {
  final String itemName, dateTime;
  const ListTileWidget({required this.dateTime, required this.itemName});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
              child: AddElementOrDetailsScreen(
                isAddScreen: false,
              ),
              type: list[Random().nextInt(list.length)],
              alignment: list2[Random().nextInt(list2.length)],
            ));
      },
      leading: Container(
        width: 8,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(4.0),
            bottomRight: Radius.circular(4.0),
          ),
          color: Colors.primaries[Random().nextInt(18)],
        ),
      ),
      title: // Adobe XD layer: 'Shopping List' (text)
          Text(
        itemName,
        style: Styles.textStyle,
        textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
      subtitle: // Adobe XD layer: 'May, 29' (text)
          Text(
        dateTime,
        style: Styles.hintStyle2,
        textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: MyColors.hintColor,
      ),
    );
  }
}
