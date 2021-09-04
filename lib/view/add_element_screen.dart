import 'package:expire_date/controller/unfoucs.dart';
import 'package:expire_date/model/consts.dart';
import 'package:expire_date/view/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/add_element_widget.dart';
import 'widgets/details_widget.dart';

class AddElementOrDetailsScreen extends StatelessWidget {
  final bool isAddScreen;
  const AddElementOrDetailsScreen({required this.isAddScreen});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        UnFocus.unFocus(context);
      },
      child: Scaffold(
        backgroundColor: MyColors.backgroundColor,
        appBar: AppBarWidget(
          title: isAddScreen ? "Add New Element" : "Item Name",
          isAddScreen: isAddScreen,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: isAddScreen ? AddWidget() : DetailsWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
