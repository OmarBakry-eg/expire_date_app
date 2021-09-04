import 'package:expire_date/model/consts.dart';
import 'package:flutter/material.dart';

import 'text_field.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 333,
        height: 176,
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 0.9,
            color: Colors.white,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white)),
                child: const Icon(Icons.upload, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Upload New Image",
                style: Styles.textStyle,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      const MyTextField(
        title: "Item Name",
        readOnly: true,
      ),
      const SizedBox(
        height: 30,
      ),
      const MyTextField(
        title: "Description",
        readOnly: true,
      ),
      const SizedBox(
        height: 30,
      ),
      const MyTextField(
        title: "Expire date",
        readOnly: true,
      )
    ]);
  }
}
