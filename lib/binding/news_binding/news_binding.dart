import 'package:get/get.dart';
import 'package:kush_gods/contollers/news_controller/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(() => NewsController());
  }
}
