import 'package:get/get.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    _startTimer();
    super.onInit();
  }

  _startTimer() {
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(MyPagesName.dashBoard);
    });
  }
}
