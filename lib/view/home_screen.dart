import 'package:auto_animated/auto_animated.dart';
import 'package:expire_date/model/colors.dart';
import 'package:flutter/material.dart';
import 'widgets/list_tile_home_widget.dart';
import 'widgets/photo_home_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColors.backgroundColor,
        elevation: 30,
        title: Text(
          "Expire Date",
          style: Styles.textStyle.copyWith(fontSize: 18),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            // Adobe XD layer: 'Base' (shape)
            Container(
              width: 319,
              height: 44,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0x0af5f6fa),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: MyColors.hintColor,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  // Adobe XD layer: 'Text Email' (text)
                  Text(
                    'Search note',
                    style: Styles.hintStyle,
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DescWidget(
                  imageAsset: "img/1.png",
                  dataCount: 18,
                  textDesc: "All Notes",
                ),
                DescWidget(
                  imageAsset: "img/2.png",
                  dataCount: 5,
                  textDesc: "Expired Elements",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontFamily: 'Roboto-Bold',
                    fontSize: 20,
                    color: const Color(0xffffffff),
                    height: 1.6,
                  ),
                  textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: LiveList(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (c, i, animation) => FadeTransition(
                  opacity: Tween<double>(
                    begin: 0,
                    end: 1,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(2, 0.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTileWidget(
                          itemName: "food",
                          dateTime: "May 28",
                        ),
                        i / 2 == 0 || i / 2 == 0.5
                            ? Divider(
                                color: MyColors.hintColor,
                                height: 20,
                                indent: 30,
                                endIndent: 30,
                              )
                            : Offstage(),
                      ],
                    ),
                  ),
                  // separatorBuilder: (context, i) => Divider(
                  //       color: MyColors.hintColor,
                  //       height: 20,
                  //       indent: 30,
                  //       endIndent: 30,
                  //     ),
                ),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: MyColors.textColor,
          size: 30,
        ),
        backgroundColor: Color(0xFF7C37FA),
      ),
    );
  }
}
