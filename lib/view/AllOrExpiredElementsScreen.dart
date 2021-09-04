import 'package:auto_animated/auto_animated.dart';
import 'package:expire_date/model/colors.dart';
import 'package:expire_date/view/widgets/list_tile_home_widget.dart';
import 'package:flutter/material.dart';

class AllOrExpiredElementsList extends StatefulWidget {
  @override
  _AllOrExpiredElementsListState createState() => _AllOrExpiredElementsListState();
}

class _AllOrExpiredElementsListState extends State<AllOrExpiredElementsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      appBar: AppBar(
        elevation: 30,
        backgroundColor: MyColors.backgroundColor,
        title: Text(
          "All Elements",
          style: Styles.textStyle.copyWith(fontSize: 18),
        ),
      ),
      body: LiveList(
        itemCount: 40,
        itemBuilder: (context, i, animation) => FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(2, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: ListTileWidget(
              itemName: "Item",
              dateTime: "DATE",
            ),
          ),
        ),
      ),
    );
  }
}
