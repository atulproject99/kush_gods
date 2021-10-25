import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kush_gods/consts/app_color.dart';
import 'package:kush_gods/consts/app_theme.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';
import 'package:kush_gods/utils/routes_pages/routes_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: AppColor.backgroundColor,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Kush Gods",
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme,
        initialRoute: MyPagesName.splashFile,
        getPages: MyPages.list);
  }
}
