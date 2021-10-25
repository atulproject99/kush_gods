import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kush_gods/consts/app_color.dart';

class AppTheme {
  static ThemeData get appTheme => ThemeData(
      scaffoldBackgroundColor: AppColor.backgroundColor,
      primaryColor: AppColor.backgroundColor,

      //appbar Theme
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.red,
      )));




      
}
