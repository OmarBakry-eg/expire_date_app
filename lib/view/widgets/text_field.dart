import 'package:expire_date/model/consts.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final bool readOnly;
  const MyTextField({required this.title, this.readOnly = false}) : assert(title != '');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        readOnly: readOnly,
        style: Styles.textStyle,
        maxLines: null,
        decoration: InputDecoration(
          labelText: title,
          labelStyle: Styles.textStyle,
          enabledBorder: const UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
          ),
          hintText: 'Type something..',
          hintStyle: Styles.hintStyle,
        ),
      ),
    );
  }
}
