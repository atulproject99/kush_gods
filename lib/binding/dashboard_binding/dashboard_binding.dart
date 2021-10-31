import 'package:get/get.dart';
import 'package:kush_gods/contollers/dashboard_controller/dashboard_controller.dart';
import 'package:kush_gods/contollers/news_controller/news_controller.dart';
import 'package:kush_gods/contollers/search_controller/search_controller.dart';
import 'package:kush_gods/contollers/slider_controller/slider_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<NewsController>(() => NewsController());
    Get.lazyPut<SliderController>(() => SliderController());
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
