import 'package:flutter/material.dart';

mixin UnFocus {
  static late FocusScopeNode currentFocus;
  static void unFocus(context) {
    currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}