import 'package:flutter/material.dart';

class AppTheme {
  static Color scaffoldBackgroundColor = Color.fromARGB(255, 255, 255, 255);

  static ThemeData getTheme(BuildContext context){
    return Theme.of(context).copyWith(
      scaffoldBackgroundColor: scaffoldBackgroundColor,
    );
  }
}