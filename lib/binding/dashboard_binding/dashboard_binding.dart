import 'package:get/get.dart';
import 'package:kush_gods/contollers/dashboard_controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
