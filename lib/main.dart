import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';
import 'package:kush_gods/utils/routes_pages/routes_pages.dart';
import 'package:kush_gods/views/pages/splashpage/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Kush Gods",
        debugShowCheckedModeBanner: false,
        initialRoute: MyPagesName.splashFile,
        getPages: MyPages.list);
  }
}
