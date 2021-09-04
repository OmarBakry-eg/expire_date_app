import 'package:expire_date/model/consts.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isAddScreen;
  const AppBarWidget({required this.title, this.isAddScreen = false}) : assert(title != '');
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 30,
      backgroundColor: MyColors.backgroundColor,
      title: Text(
        title,
        style: Styles.textStyle.copyWith(fontSize: 18),
      ),
      actions: [
        title == 'Expire Date'
            ? Offstage()
            : isAddScreen
                ? IconButton(onPressed: () {}, icon: Icon(Icons.check, color: Colors.white))
                : IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
