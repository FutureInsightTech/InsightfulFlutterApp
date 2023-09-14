import 'package:flutter/material.dart';

class CustomTextStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 29,
    height: 1,
    fontWeight: FontWeight.bold,
    decorationThickness: 1.5,
    decoration: TextDecoration.underline,
    color: Colors.white,
  );

  static const TextStyle regularTextStyle = TextStyle(
    fontSize: 18,
    height: 1,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  static const TextStyle centeredTitleStyle = TextStyle(
    fontSize: 29,
    height: 1,
    fontWeight: FontWeight.bold,
    decorationThickness: 1.5,
    decoration: TextDecoration.underline,
    color: Colors.white,
  );

  static const EdgeInsets defaultSpacing = EdgeInsets.symmetric(vertical: 20.0);
}
