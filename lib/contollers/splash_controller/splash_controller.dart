import 'package:get/get.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("erere");
    _startTimer();
    super.onInit();
  }

  _startTimer() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(MyPagesName.dashBoard);
    });
  }
}
