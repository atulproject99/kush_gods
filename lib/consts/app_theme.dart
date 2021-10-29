import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:kush_gods/consts/app_color.dart';

class AppTheme {
  static ThemeData get appTheme => ThemeData(
      scaffoldBackgroundColor: AppColor.backgroundColor,
      primaryColor: AppColor.backgroundColor,

      //appbar Theme
      appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          systemOverlayStyle: SystemUiOverlayStyle(),
          backgroundColor: Color.fromARGB(255, 242, 246, 249)),

      //texttheme
      textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)),

      //divider color theme
      dividerColor: AppColor.dividerColor);
}
