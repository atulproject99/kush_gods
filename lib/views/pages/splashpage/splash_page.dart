import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kush_gods/consts/app_images.dart';
import 'package:kush_gods/contollers/splash_controller/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Get.find<SplashController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
      AppImages.APP_LOGO,
      width: 200,
      height: 200,
    )));
  }
}
